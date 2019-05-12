LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_SIGNED.all;
LIBRARY work;
USE work.de0core.all;

ENTITY pipe IS
Generic(ADDR_WIDTH: integer := 12; DATA_WIDTH: integer := 1);

   PORT( Clock , vert_sync_int: IN std_logic;
		  Signal  pixel_column, pixel_row :in std_logic_vector(9 downto 0);
        SIGNAL Red,Green,Blue,pipe_enable 			: OUT std_logic;
        SIGNAL Horiz_sync,Vert_sync		: OUT std_logic;
		  Signal Pipe_y,Pipe_x : Out  std_logic_vector(9 DOWNTO 0));
END pipe;

architecture behavior of pipe is

	
			-- Video Display Signals   
	SIGNAL Red_Data, Green_Data, Blue_Data,
			reset, Pipe_on, Direction,spawn_flag			: std_logic;
	--gravity motion is just the left motion for now
	SIGNAL Pipe_X_motion,Left_Click_Motion,Gravity_Motion 						: std_logic_vector(9 DOWNTO 0);
	SIGNAL Pipe_Y_pos		: std_logic_vector(9 DOWNTO 0):=CONV_STD_LOGIC_VECTOR(0,10);
	SIGNAL Pipe_X_pos		: std_logic_vector(9 DOWNTO 0):=CONV_STD_LOGIC_VECTOR(640,  10);
	
	Constant bottom_boundary									: std_logic_vector(9 downto 0):=CONV_STD_LOGIC_VECTOR(480,10);
	--hardcoded size in there which is 8
	Constant top_boundary										: std_logic_vector(9 downto 0):=CONV_STD_LOGIC_VECTOR(8,10);
	Constant Size											      : std_logic_vector(9 downto 0):=CONV_STD_LOGIC_VECTOR(10,10);	
	
	--keep this in case we change to unsigned
	
		--gravity motion is just the left motion for now
--	SIGNAL Pipe_X_motion,Left_Click_Motion,Gravity_Motion,pixel_rows,pixel_cols : unsigned(9 DOWNTO 0);
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
	--Pipe displays with width of size 
	IF ('0' & Pipe_X_pos <= pixel_column + Size) AND
		-- only display ball if it is inside screen ?
		(Pipe_X_pos + Size >= '0' & pixel_column) then
		Pipe_on<='1';
		pipe_enable<='1';
  
  else
		Pipe_on<='0';
		pipe_enable<='0';
  end if;
	Red <=  '0';
	-- Turn off Red and Blue when displaying pipe
	Green <= pipe_on;
	Blue <=  '0';
	

END process RGB_Display_pipe;

Move_Pipe: process
BEGIN
			-- Move  once every vertical sync

	WAIT UNTIL vert_sync_int'event and vert_sync_int = '1';
		
		

		--at the moment this just makes the pipe move from 640 to 0 and then restarts at 640	
		if (('0' & Pipe_x_pos) >=  Size)THEN
				
				Gravity_Motion <= -CONV_STD_LOGIC_VECTOR(10,10);
				
		else
				--Gravity_Motion <= CONV_STD_LOGIC_VECTOR(0,10);
		END IF;

		Pipe_X_pos <= Pipe_X_Pos +Gravity_Motion;
END process Move_Pipe;

Pipe_x<=Pipe_X_pos;
Pipe_Y<= Pipe_Y_pos;
END behavior ;

