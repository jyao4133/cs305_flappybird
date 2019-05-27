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
			pickup_collide								: out std_logic;
			r_pickup_pts,g_pickup_pts,b_pickup_pts 			: in std_logic_vector(3 downto 0); --blue and green unused 
			pickup_pts_on									: in std_logic;
			pickup_pts_collide								: out std_logic;
			score_pickup_x, energy_pickup_x     : in std_logic_vector (10 downto 0);
			score_pickup_y, energy_pickup_y     : in std_logic_vector (10 downto 0);
			rgb_background : in std_logic_vector(11 downto 0);
			start_on : in std_logic;
			start_rgb : in std_logic_vector(3 downto 0)
			);
end render_mux;

Architecture render of render_mux is
signal Collision : std_logic:= '0' ;

	begin	
		
		process(r_ball,g_ball,b_ball,r_text,g_text,b_text,ball_on,text_on,r_pipe,g_pipe,b_pipe,pipe_on, state_num, energy_pickup_x,start_rgb)
		begin
		 case State_num is 
			 when "001"=>
--				r<="0000";
--				g<="0000";
--				b<="0000";
				if (start_on = '1') then
					r<=start_rgb;
					g<=start_rgb;
					b<=start_rgb;
					
				else
					r<="0000";
					g<="0000";
					b<="0000";
				end if;
			 when "010"=>
				if (start_on = '1') then
					r<=start_rgb;
					g<=start_rgb;
					b<=start_rgb;
					
				else
					r<="0000";
					g<="0000";
					b<="0000";
				end if;
			 when "011"=>
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
--						if(energy_pickup_x <= "00101001010" and energy_pickup_x >= "00100110110") then
							pickup_collide<='1';
--						else
--							pickup_collide <= '0';
--						end if;
--					
					elsif(pickup_pts_on /= '0' )then --ball pickup becomes white
						r<="1111";
						g<="1111";
						b <= "0000";
						pickup_pts_collide<='1';
						
					else 
						pickup_collide <= '0';
						pickup_pts_collide<='0';

					end if;
					
			
			elsif (text_on /= '0' ) then
			
				r<=r_text;
				g<=g_text;
				b<=b_text;
				if(r_text = "000") then
					r<= rgb_background(11 downto 8);
					
					
		
				end if;
				if (g_text= "000") then
					g<=rgb_background(7 downto 4);
				end if;
				if(b_text="000") then
					b<=rgb_background(3 downto 0);
				end if;	
				
			elsif (pipe_on /= '0') then
				r<=r_pipe;
				g<=g_pipe;
				b<=b_pipe;
			elsif (energy_on /= '0') then
				r <= r_energy;
				g <= g_energy;
				b <= b_energy;
			elsif (pickup_on /= '0' ) then
				
				r <= "0000";
				g <= "0000";
				b <= b_pickup;
			elsif (pickup_pts_on /= '0' ) then
				
				r <= "0000";
				g <= "0000";
				b <= "0000";
					
				
			else 
					r<= rgb_background(11 downto 8);
					g<=rgb_background(7 downto 4);
					b<=rgb_background(3 downto 0);

			end if;
			 when "100"=>
				if (start_on = '1') then
					r<=start_rgb;
					g<=start_rgb;
					b<=start_rgb;
					
				else
					r<="0000";
					g<="0000";
					b<="0000";
				end if;
					
					
			 when "101" =>
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
--						if(energy_pickup_x <= "00101001010" and energy_pickup_x >= "00100110110") then
							pickup_collide<='1';
--						else
--							pickup_collide <= '0';
--						end if;
--					
					elsif(pickup_pts_on /= '0' )then --ball pickup becomes white
						r<="1111";
						g<="1111";
						b <= "0000";
						pickup_pts_collide<='1';
						
					else 
						pickup_collide <= '0';
						pickup_pts_collide<='0';

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
			elsif (pickup_on /= '0' ) then
				
				r <= "0000";
				g <= "0000";
				b <= b_pickup;
			elsif (pickup_pts_on /= '0' ) then
				
				r <= "0000";
				g <= "0000";
				b <= "0000";
					
				
			else 
					r<= rgb_background(11 downto 8);
					g<=rgb_background(7 downto 4);
					b<=rgb_background(3 downto 0);

			end if;
			 when others=>
			 
				r <= "0000";
				g <= "0000";
				b <= "0000";
		 end case;
		
		
		
		
			
--			if(collision = '1') then
--				sw1<='1';
--			else
--				sw1<='0';
--			end if;
			
		end process;
end architecture render;
		