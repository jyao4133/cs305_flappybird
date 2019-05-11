LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity render_mux is
	port (r_ball,g_ball,b_ball,r_text,g_text,b_text,ball_on,text_on: in std_logic;
			r,g,b: out std_logic);
end render_mux;

Architecture render of render_mux is
begin	
	process(r_ball,g_ball,b_ball,r_text,g_text,b_text,ball_on,text_on)
	begin
	r<='0';
	g<='0';
	b<='0';
		if (ball_on = '1') then
			r<=r_ball;
			g<=g_ball;
			b<=b_ball;
		
		elsif (text_on = '1') then
			r<=r_text;
			g<=g_text;
			b<=b_text;
		
		elsif (ball_on = '0') and (text_on = '0') then
		r<='0';
		g<='1';
		b<='0';
		end if;
		
	end process;
end architecture render;
		