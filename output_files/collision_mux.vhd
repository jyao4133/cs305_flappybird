LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--This is a priority mux which chooses the configuration of loading elements on the vga screen
--Inputs: RGB Values from each relement and Enable Signal from each element
entity collision_mux is
	port ( 
	
		pipe_x : in std_logic_vector(10 downto 0);
		pipe_y : in std_logic_vector(10 downto 0);
		pipe_size : in std_logic_vector(10 downto 0);
		pipe_gap : in std_logic_vector(10 downto 0);
		ball_x : in std_logic_vector(10 downto 0);
		ball_y : in std_logic_vector(10 downto 0);
		ball_size : in std_logic_vector(10 downto 0);
		collision_on : out std_logic;
		clk : in std_logic;
		vert_sync: in std_logic;
		pixel_row,pixel_col : in std_logic_vector(10 downto 0));
		
end collision_mux;

Architecture render of collision_mux is
begin	

	process(pixel_col,pixel_row,clk, vert_sync)
		begin
			
		-- if(rising_edge(clk))then
			if(vert_sync'event and vert_sync='1') then
				--Checking if the ball top right corner intersects the pipe left side area
				if ((((ball_x) + ball_size >= pipe_x) OR 
					--Checking if the ball top right corner intersects the pipe right side area
					((ball_x) + ball_size <= pipe_x + pipe_size)) or
					--Checking if the ball top left corner intersects the pipe left side area
					(((ball_x) >= pipe_x) OR
					--Checking if the ball top left corner intersects the pipe right side area
					(((ball_x)<= pipe_x + pipe_size)))) and 
					--Checking that the top of the ball is intersecting with top pipe
					(ball_y<=pipe_y or
					--Checking that the bottom of the ball is intersecting with the bottom pipe
					 ball_y+ball_size >= pipe_y+ pipe_gap) then
					 
					 collision_on <= '0';
					 
				else
					
					collision_on <= '1';
					
					
				end if;
		--end if;		

		
		end if;

	end process;
end architecture render;
		