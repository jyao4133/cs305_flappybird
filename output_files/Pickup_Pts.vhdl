LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_SIGNED.all;
LIBRARY work;
USE work.de0core.all;

ENTITY Pickup_Pts IS
Generic(ADDR_WIDTH: integer := 12; DATA_WIDTH: integer := 1);

   PORT( Clock , vert_sync_int                     : IN std_logic;
		  Signal  pixel_row,LFSR_input               : in std_logic_vector(10 downto 0);
		  Signal pixel_column 								: in  std_logic_vector(10 downto 0);
        SIGNAL r_pickup,g_pickup,b_pickup 			: OUT std_logic_vector(3 downto 0);
        SIGNAL pickup_enable,	Horiz_sync,Vert_sync	: OUT std_logic;
		  Signal Pickup_y 										: Out std_logic_vector(10 DOWNTO 0);
		  Signal Pickup_x 										: Out  std_logic_vector(10 DOWNTO 0);
		  Signal Pickup_xsize, Pickup_ysize 					: out std_logic_vector(10 DOWNTO 0);
		  Signal pickup_collision							: in std_logic;
		  Signal ball_on : in std_logic;
		  Signal r_ball, g_ball : in std_logic_vector(3 downto 0);
		  signal game_state : in std_logic_vector(2 downto 0);
		  Signal flag_out : out std_logic
		  );

END Pickup_Pts;

architecture behavior of Pickup_Pts is
			-- Video Display Signals   
	SIGNAL Red_Data, Green_Data, Blue_Data,
			reset, pickup_on, Direction,spawn_flag			: std_logic;
	--gravity motion is just the left motion for now
	SIGNAL Pipe_X_motion,Left_Click_Motion,X_Motion 	: std_logic_vector(10 DOWNTO 0);
	SIGNAL Pickup_Y_pos											: std_logic_vector(10 DOWNTO 0):=CONV_STD_LOGIC_VECTOR(200,11);
	SIGNAL Pickup_X_pos											: std_logic_vector(10 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(350,11);
	SIGNAL u_Ypos, u_Yspeed 									: unsigned(10 DOWNTO 0);
	Signal bottom_boundary										: std_logic_vector(10 downto 0):=CONV_STD_LOGIC_VECTOR(460,11);
	--hardcoded size in there which is 8
	Signal top_boundary											: std_logic_vector(10 downto 0):=CONV_STD_LOGIC_VECTOR(100,11);
	Constant Size											   	: std_logic_vector(10 downto 0):=CONV_STD_LOGIC_VECTOR(5,11);	

begin
--Collision :Process(ball_on,pickup_on,pixel_row,pixel_column)
--BEGIN
--	if(pickup_collision = '1'and pixel_column < "00101010100" and pixel_column > "00100101100") then
--			
--			alive_flag<='0';
--	
--	end if;
--	
--end process collision;

	

RGB_Display_Pickup: Process (Pickup_X_pos, Pickup_Y_pos, pixel_column, pixel_row, clock)

	

BEGIN
	

		--Pipe displays with width of size and inside the screen boundary
		--Determines if pipe is within the x boundaries of the screen
			IF ( Pickup_X_pos <= pixel_column + Size) AND
			-- only display ball if it is inside screen ?
			(Pickup_X_pos + Size >= pixel_column) AND
			(Pickup_Y_pos <= pixel_row + Size) AND
			(Pickup_Y_pos + Size >= pixel_row ) THEN
			

					pickup_enable<='1';
					pickup_on<='1';

	  
	  else
	  
			pickup_enable<='0';
			pickup_on<='0';
	  end if;
		R_pickup <=  "1111";
		
		G_pickup <=  "0000";
		
		
		-- Turn off Red and Blue when displaying pipe
		if(pickup_on='1' ) then
			B_pickup <= "1111";
		else
			b_pickup<= "0000";
		end if;	
		
				

	

END process RGB_Display_Pickup;

Move_Pickup: process
BEGIN
			-- Move  once every vertical sync

	WAIT UNTIL vert_sync_int'event and vert_sync_int = '1';
		--at the moment this just makes the pipe move from 640 to 0 and then restarts at 640	
		
			if (('0' & Pickup_X_pos) >=  Size)THEN
					X_Motion <= -CONV_STD_LOGIC_VECTOR(2,11);
					
					if (game_state = "011") then
					
						Pickup_X_pos <= Pickup_X_pos + X_Motion;
						
					else
						
						Pickup_X_pos <= Pickup_X_pos;
					end if;
					
			else	
					Pickup_X_pos <= "01111111000";
					pickup_Y_pos <= lfsr_input;
					pickup_Y_pos(10) <= '0';
					pickup_Y_pos(9) <=  '0';
					pickup_Y_pos(8) <=  '0';
					
					pickup_Y_pos(6) <=  '1';

					pickup_Y_pos(1) <=  '1';

			END IF;

END process Move_Pickup;
pickup_x<=pickup_X_Pos;
pickup_Y<=pickup_Y_pos;
Pickup_xsize <= size;
--the gap between pipes
Pickup_ysize <= top_boundary - bottom_boundary;
END behavior ;


