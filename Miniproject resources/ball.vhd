-- Bouncing Ball Video 
--
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;
LIBRARY lpm;
USE lpm.lpm_components.ALL;

PACKAGE de0core IS
	COMPONENT vga_sync
 		PORT(clock_25Mhz, red, green, blue	: IN	STD_LOGIC;
         	red_out, green_out, blue_out	: OUT 	STD_LOGIC;
			horiz_sync_out, vert_sync_out	: OUT 	STD_LOGIC;
			pixel_row, pixel_column			: OUT STD_LOGIC_VECTOR(9 DOWNTO 0));
	END COMPONENT;
END de0core;

			-- Bouncing Ball Video 
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_SIGNED.all;
LIBRARY work;
USE work.de0core.all;

ENTITY ball IS
Generic(ADDR_WIDTH: integer := 12; DATA_WIDTH: integer := 1);

   PORT(SIGNAL left_click, Clock 			: IN std_logic;
        SIGNAL Red,Green,Blue 			: OUT std_logic;
        SIGNAL Horiz_sync,Vert_sync		: OUT std_logic);		
END ball;

architecture behavior of ball is

	
			-- Video Display Signals   
	SIGNAL Red_Data, Green_Data, Blue_Data, vert_sync_int,
			reset, Ball_on, Direction,spawn_flag			: std_logic;
	SIGNAL Size 													: std_logic_vector(9 DOWNTO 0);  
	SIGNAL Ball_Y_motion,Left_Click_Motion,Gravity_Motion 						: std_logic_vector(9 DOWNTO 0);
	SIGNAL Ball_Y_pos												: std_logic_vector(9 DOWNTO 0);
	SIGNAL Ball_X_pos												: std_logic_vector(9 DOWNTO 0);
	SIGNAL pixel_row, pixel_column							: std_logic_vector(9 DOWNTO 0); 
	--FOR CHAr_rom
	SIGNAL character_add	: STD_LOGIC_VECTOR(5 downto 0):="000010";--H
	SIGNAL font_row		: STD_LOGIC_VECTOR (2 DOWNTO 0):="000";
	SIGNAL font_col	   : STD_LOGIC_VECTOR (2 DOWNTO 0):="100";
	SIGNAL rom_out			: STD_LOGIC;
	SIGNAL t_flag        : STD_LOGIC:='0';
	component char_rom is
		PORT
		(
			--address			: 	IN STD_LOGIC_VECTOR (8 DOWNTO 0)
			character_address	:	IN STD_LOGIC_VECTOR (5 DOWNTO 0);
			font_row, font_col	:	IN STD_LOGIC_VECTOR (2 DOWNTO 0);
			clock				: 	IN STD_LOGIC ;
			--q					: 	OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
			rom_mux_output		:	OUT STD_LOGIC
		);
	END component char_rom;
	
BEGIN 
	HGHSCORE: char_rom
	PORT MAP (clock => clock,character_address=>character_add,font_col=>font_col,font_row=>font_row,rom_mux_output=>rom_out);
          
   SYNC: vga_sync
 	PORT MAP(clock_25Mhz => clock, 
				red => red_data, green => green_data, blue => blue_data,	
    	     	red_out => red, green_out => green, blue_out => blue,
			 	horiz_sync_out => horiz_sync, vert_sync_out => vert_sync_int,
			 	pixel_row => pixel_row, pixel_column => pixel_column);

Size <= CONV_STD_LOGIC_VECTOR(8,10);
Ball_X_pos <= CONV_STD_LOGIC_VECTOR(320,  10);
-- need internal copy of vert_sync to read
vert_sync <= vert_sync_int;

		-- Colors for pixel data on video signal
Red_Data <=  '1';

		-- Turn off Green and Blue when displaying ball
--Green_Data <= NOT Ball_on;
Blue_Data <=  NOT Ball_on;

RGB_Display_Ball: Process (Ball_X_pos, Ball_Y_pos, pixel_column, pixel_row, Size)
BEGIN
			-- Set Ball_on ='1' to display ball
 IF ('0' & Ball_X_pos <= pixel_column + Size) AND
 			-- compare positive numbers only
 	(Ball_X_pos + Size >= '0' & pixel_column) AND
 	('0' & Ball_Y_pos <= pixel_row + Size) AND
 	(Ball_Y_pos + Size >= '0' & pixel_row ) THEN
 		Ball_on <= '1';
 	ELSE
 		Ball_on <= '0';
END IF;

END process RGB_Display_Ball;

Move_Ball: process
BEGIN
			-- Move ball once every vertical sync
spawn_flag <= '1';

	WAIT UNTIL vert_sync_int'event and vert_sync_int = '1';
			-- Bounce off top or bottom of screen
		
		 If(spawn_flag = '0') then

				If(left_click = '1') then
						Left_Click_Motion <= - CONV_STD_LOGIC_VECTOR(15,10);
				else 
						Left_Click_Motion <= - CONV_STD_LOGIC_VECTOR(0,10);
				END IF;
				
				if (('0' & Ball_Y_pos) <=  (CONV_STD_LOGIC_VECTOR(480,10) - Size - Size)) THEN
					Gravity_Motion <= CONV_STD_LOGIC_VECTOR(4,10);
				-- Compute next ball Y position
				else
								Gravity_Motion <= CONV_STD_LOGIC_VECTOR(0,10);

				END IF;
		else
				Ball_Y_pos <= CONV_STD_LOGIC_VECTOR(200,10);
				spawn_flag <= '0';
		END IF;
			
				Ball_Y_pos <= Ball_Y_pos +Gravity_Motion+Left_Click_Motion;
		
END process Move_Ball;


Screen_Text:process(rom_out)
	begin

		green_data<='1';
		font_row <= pixel_row(2 downto 0);
		font_col <= pixel_column(2 downto 0);
		green_data<='0'; 

end process;
END behavior;

