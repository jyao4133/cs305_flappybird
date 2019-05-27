LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_SIGNED.all;

LIBRARY work;
USE work.de0core.all;

ENTITY pipe IS
Generic(ADDR_WIDTH: integer := 12; DATA_WIDTH: integer := 1);

   PORT( Clock , vert_sync_int,Switch: IN std_logic;
		  Signal  pixel_row,LFSR_input :in std_logic_vector(10 downto 0);
		  Signal pixel_column : in std_logic_vector(10 downto 0);
        SIGNAL Red,Green,Blue 			: OUT std_logic_vector(3 downto 0);
        SIGNAL pipe_enable,	Horiz_sync,Vert_sync	: OUT std_logic;
		  Signal Pipe_y : Out  std_logic_vector(10 DOWNTO 0);
		  Signal Pipe_x : Out  std_logic_vector(10 DOWNTO 0);
		  Signal Pipe_xsize, Pipe_ysize : out std_logic_vector(10 DOWNTO 0);
		  signal state_num : in std_logic_vector(2 downto 0);
		  signal score_tens : in std_logic_vector (9 downto 0);
		  signal reset_all : in std_logic);
END pipe;

architecture behavior of pipe is
			-- Video Display Signals   
	SIGNAL Red_Data, Green_Data, Blue_Data,
			reset, Pipe_on, Direction,spawn_flag			: std_logic;
	--gravity motion is just the left motion for now
	SIGNAL Pipe_X_motion,Left_Click_Motion,X_Motion 	: std_logic_vector(10 DOWNTO 0);
	SIGNAL Pipe_Y_pos												: std_logic_vector(10 DOWNTO 0):=CONV_STD_LOGIC_VECTOR(0,11);
	SIGNAL Pipe_X_pos												: std_logic_vector(10 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(460,11);
	SIGNAL u_Ypos, u_Yspeed 									: unsigned(10 DOWNTO 0);
	Signal bottom_boundary										: std_logic_vector(10 downto 0):=CONV_STD_LOGIC_VECTOR(600,11);
	--hardcoded size in there which is 8
	Signal top_boundary											: std_logic_vector(10 downto 0):=CONV_STD_LOGIC_VECTOR(100,11);
	Constant Size											   	: std_logic_vector(10 downto 0):=CONV_STD_LOGIC_VECTOR(10,11);	
	
	--keep this in case we change to unsigned
	
		--gravity motion is just the left motion for now
--	SIGNAL Pipe_X_motion,Left_Click_Motion,X_Motion,pixel_rows,pixel_cols : unsigned(9 DOWNTO 0);
--	SIGNAL Pipe_Y_pos		: unsigned(9 DOWNTO 0):=240;
--	SIGNAL Pipe_X_pos		: unsigned(9 DOWNTO 0):=320;
--	
--	Constant bottom_boundary									: unsigned(9 DOWNTO 0):=480;
--	--hardcoded size in there which is 8
--	Constant top_boundary										: unsigned(9 DOWNTO 0):=0;
--	Constant Size											      : unsigned(9 DOWNTO 0):=8;
BEGIN 
----keep
--	pixel_rows <= unsigned (pixel_row);
--	pixel_cols <= unsigned (pixel_column);
RGB_Display_pipe: Process (Pipe_X_pos, Pipe_Y_pos, pixel_column, pixel_row)
BEGIN
	--Pipe displays with width of size and inside the screen boundary
	
	--Determines if pipe is within the x boundaries of the screen
	IF (Pipe_X_pos <= pixel_column + Size) AND (Pipe_X_pos + Size >=pixel_column)and 
		--Determines if pipe is within the y boundaries of the screen
		((Pipe_Y_pos+top_boundary >= pixel_row )or(Pipe_Y_pos+bottom_boundary <=  pixel_row ) ) THEN 
		Pipe_on<='1';
		pipe_enable<='1';
  
  else
		Pipe_on<='0';
		pipe_enable<='0';
  end if;
	Red <=  "0000";
	-- Turn off Red and Blue when displaying pipe
	if(pipe_on='1') then
		Green <= "1111";
	end if;	
	Blue <=  "0000";
	

END process RGB_Display_pipe;

Move_Pipe: process
BEGIN
			-- Move  once every vertical sync

	WAIT UNTIL vert_sync_int'event and vert_sync_int = '1';
		--at the moment this just makes the pipe move from 640 to 0 and then restarts at 640	
		if (switch ='1') then
			if (('0' & Pipe_x_pos) >=  Size)THEN
					
					
					if (score_tens = "0000000001") then
						X_Motion <= -CONV_STD_LOGIC_VECTOR(4,11);
				
					elsif (score_tens >= "0000000010") then
						X_Motion <= -CONV_STD_LOGIC_VECTOR(6,11);
					
					else
						X_Motion <= -CONV_STD_LOGIC_VECTOR(2,11);
					
					end if;
					
					if(state_num = "011" or state_num = "101") then
						Pipe_X_pos <= Pipe_X_Pos + X_Motion;
					else 
						Pipe_X_pos <= Pipe_X_Pos;

					end if;
					
					bottom_boundary <= top_boundary + CONV_STD_LOGIC_VECTOR(100,  11);
					
					

			else	
			
					Pipe_x_Pos <= "01111111000";
					

					top_boundary <= lfsr_input;
					top_boundary(10) <= '0';
					top_boundary(9) <= '0';
					top_boundary(8) <= '0';
					top_boundary(1) <= '1';

					if (top_boundary > CONV_STD_LOGIC_VECTOR(430,  11) )then
						top_boundary <=  CONV_STD_LOGIC_VECTOR(20,  11);
					end if;
			END IF;
		end if;
		
		if (reset_all = '1') then
			Pipe_X_pos <= CONV_STD_LOGIC_VECTOR(460,11);
		end if;

		
END process Move_Pipe;
--
Pipe_x<=Pipe_X_Pos;
Pipe_Y<=top_boundary;
Pipe_xsize <= size;
--the gap between pipes
Pipe_ysize <= top_boundary - bottom_boundary;
END behavior ;


