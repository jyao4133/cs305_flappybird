-- Bouncing Ball Video 
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_SIGNED.all;
LIBRARY work;
USE work.de0core.all;

			-- Bouncing Ball Video 

ENTITY ourball IS
Generic(ADDR_WIDTH: integer := 12; DATA_WIDTH: integer := 1);

   PORT(SIGNAL left_click, Clock , vert_sync_int: IN std_logic;
			Signal  pixel_column, pixel_row :in std_logic_vector(9 downto 0);
        SIGNAL Red,Green,Blue,ball_signal 			: OUT std_logic;
        SIGNAL Horiz_sync,Vert_sync		: OUT std_logic);		
END ourball;

architecture behavior of ourball is

	
			-- Video Display Signals   
	SIGNAL Red_Data, Green_Data, Blue_Data,
			reset, Ball_on, Direction,spawn_flag			: std_logic;
	SIGNAL Size 													: std_logic_vector(9 DOWNTO 0);  
	SIGNAL Ball_Y_motion,Left_Click_Motion,Gravity_Motion 						: std_logic_vector(9 DOWNTO 0);
	SIGNAL Ball_Y_pos												: std_logic_vector(9 DOWNTO 0);
	SIGNAL Ball_X_pos												: std_logic_vector(9 DOWNTO 0);
	
	--FOR CHAr_rom

BEGIN 


				
Size <= CONV_STD_LOGIC_VECTOR(8,10);
Ball_X_pos <= CONV_STD_LOGIC_VECTOR(320,  10);
-- need internal copy of vert_sync to rea

--		-- Colors for pixel data on video signal
--Red_Data <=  '1';
--
--		-- Turn off Green and Blue when displaying ball
--Green_Data <= NOT Ball_on;
--Blue_Data <=  NOT Ball_on;

		-- Colors for pixel data on video signal
Red <=  '1';

		-- Turn off Green and Blue when displaying ball
Green <= NOT Ball_on;
Blue <=  NOT Ball_on;


RGB_Display_Ball: Process (Ball_X_pos, Ball_Y_pos, pixel_column, pixel_row, Size)
BEGIN
			-- Set Ball_on ='1' to display ball
 IF ('0' & Ball_X_pos <= pixel_column + Size) AND
 			-- compare positive numbers only
 	(Ball_X_pos + Size >= '0' & pixel_column) AND
 	('0' & Ball_Y_pos <= pixel_row + Size) AND
 	(Ball_Y_pos + Size >= '0' & pixel_row ) THEN
 		Ball_on <= '1';
		ball_signal <= '1';

 	ELSE
 		Ball_on <= '0';
		ball_signal <= '0';

END IF;
--	Red <= Red_Data;
--	Green <= Green_data;
--	Blue <= Blue_Data;
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

END behavior;

