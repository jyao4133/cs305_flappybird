LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--This is a priority mux which chooses the configuration of loading elements on the vga screen
--Inputs: RGB Values from each relement and Enable Signal from each element
entity render_mux is
	port (r_ball,g_ball,b_ball 					: in std_logic_vector(3 downto 0);
			r_text,g_text,b_text						: in std_logic_vector(3 downto 0);
			r_pipe,g_pipe,b_pipe						: in std_logic_vector(3 downto 0);
			ball_on,text_on,pipe_on,collide		: in std_logic; -- collide unused
			colliding									: out std_logic;
			r,g,b											: out std_logic_vector(3 downto 0);
			state_num									: in std_logic_vector(2 downto 0);
			r_energy,g_energy,b_energy 			: in std_logic_vector(3 downto 0); --blue and green unused 
			energy_on									: in std_logic;
			r_pickup,g_pickup,b_pickup 			: in std_logic_vector(3 downto 0); --blue and green unused 
			pickup_on									: in std_logic;
			pickup_collide								: out std_logic
			);
end render_mux;

Architecture render of render_mux is
signal Collision : std_logic:= '0' ;
	begin	
		
		process(r_ball,g_ball,b_ball,r_text,g_text,b_text,ball_on,text_on,r_pipe,g_pipe,b_pipe,pipe_on, state_num)
		begin
		if (state_num = "001") then
					r<="0000";
					g<="0000";
					b<="1111";
		elsif (state_num = "011") then
		
			if (ball_on /= '0') then
				r<=r_ball;
				g<=g_ball;
				b<=b_ball;
				pickup_collide<='0';
					if (pipe_on /='0' and ball_on /='0') then --black if both are on
						r<="0000";
						g<="0000";
						b<="1111";
						colliding <= '1';
					elsif(pickup_on /= '0' )then --ball pickup becomes white
						r<="1111";
						g<="1111";
						b <= "0000";
						pickup_collide<='1';
					
					else 
						pickup_collide <= '0';
					end if;
			
			elsif (text_on /= '0') then
				r<=r_text;
				g<=g_text;
				b<=b_text;
			elsif (pipe_on /= '0') then
				r<=r_pipe;
				g<=g_pipe;
				b<=b_pipe;
			elsif (energy_on /= '0') then
				r <= r_energy;
				g <= g_energy;
				b <= b_energy;
			elsif (pickup_on /= '0') then
				
				r <= r_pickup;
				g <= g_pickup;
				b <= b_pickup;
				
				
			else 
					r<="1111";
					g<="1111";
					b<="1111";

			end if;
		
		elsif (state_num = "010") then
					r<="0000";
					g<="1111";
					b<="0000";
		end if;
		
			
--			if(collision = '1') then
--				sw1<='1';
--			else
--				sw1<='0';
--			end if;
			
		end process;
end architecture render;
		