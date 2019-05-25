LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--This is a priority mux which chooses the configuration of loading elements on the vga screen
--Inputs: RGB Values from each relement and Enable Signal from each element
entity pickup_collision is
	port ( 
	
		collision_on : out std_logic;
		clk,pickup_on,ball_on : in std_logic;
		pickup_x :in std_logic_vector(10 downto 0));

		
end pickup_collision;

Architecture collision of pickup_collision is
	Signal tmp_c: std_logic:='0';
	begin	
		
		process(pickup_on, ball_on, pickup_x)
			begin

				if (pickup_on /= '0' AND ball_on /= '0' and pickup_x < "00101010100" and pickup_x > "00100101100") then
					tmp_c <= '1';
					
				else 
					tmp_c <= '0';

				end if;

		end process;
		
		collision_on<=tmp_c;
end architecture collision;
		