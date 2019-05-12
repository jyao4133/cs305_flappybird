LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--This is a priority mux which chooses the configuration of loading elements on the vga screen
--Inputs: RGB Values from each relement and Enable Signal from each element
entity render_mux is
	port (r_ball,g_ball,b_ball,r_text,g_text,b_text,ball_on,text_on,r_pipe,g_pipe,b_pipe,pipe_on: in std_logic;
			r,g,b: out std_logic);
end render_mux;

Architecture render of render_mux is
begin	
	process(r_ball,g_ball,b_ball,r_text,g_text,b_text,ball_on,text_on,r_pipe,g_pipe,b_pipe,pipe_on)
	begin
	
		if (ball_on /= '0') then
			r<=r_ball;
			g<=g_ball;
			b<=b_ball;
		
		elsif (text_on /= '0') then
			r<=r_text;
			g<=g_text;
			b<=b_text;
		elsif (pipe_on /= '0') then
			r<=r_pipe;
			g<=g_pipe;
			b<=b_pipe;
		else -- if nothing just show black 
			r<='0';
			g<='0';
			b<='0';
		end if;
		
	end process;
end architecture render;
		