LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity pickup_timer is
	port (clk, pickup_collision: in std_logic;
			change_parameter : out std_logic);
end pickup_timer;

Architecture timer of pickup_timer is
	begin	
		
		process(pickup_collision,clk)

		variable delay : std_logic_vector(22 downto 0):="00000000000000000000000";
		variable pickup_on : std_logic;
		begin
		if (rising_edge(clk)) then
				--2^19 counter
				if(pickup_collision = '1' AND delay > "11111100001111100000110") then
					delay := "00000000000000000000000";
					pickup_on := '1';
					
				
				
				else 
					if (delay < "11111100001111100000000") then
						delay := delay + 1;
					else
						delay := "11111111001111111111111";
					end if;
					
					pickup_on := '0';

				end if;	
		end if;
		
						change_parameter <= pickup_on;

		end process;
		
end architecture timer;
		