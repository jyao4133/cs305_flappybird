LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity health_counter is
	port (clk, collision_on: in std_logic;
			health : out std_logic_vector(3 downto 0);
			game_over : out std_logic);
end health_counter;

Architecture health of health_counter is
	begin	
		
		process(collision_on,clk)

		variable delay : std_logic_vector(22 downto 0):="00000000000000000000000";
		variable initial_health : std_logic_vector (3 downto 0):= "0101";
		variable no_health : std_logic;

		begin
		if (rising_edge(clk)) then
				--2^19 counter
				if(collision_on = '1' AND delay > "11111100001111100000110") then
					delay := "00000000000000000000000";
					initial_health := initial_health - "0001";
					
					if (initial_health = "0000") then
						initial_health := "0101";
						
						no_health := '1';
					else
					
						no_health := '0';
					end if;
					
				
				else 
					if (delay < "11111100001111100000000") then
						delay := delay + 1;
					else
						delay := "11111111001111111111111";
					end if;

				end if;	
		end if;
		
						health <= initial_health;
						game_over <= no_health;
		end process;
		
end architecture health;
		