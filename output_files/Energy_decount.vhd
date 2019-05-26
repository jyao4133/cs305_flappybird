LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Energy_decount is
	port (clk: in std_logic;
			energy_remaining : out std_logic_vector(6 downto 0);
			game_over_energy : out std_logic;
			energy_reset : in std_logic;
			state_num : in std_logic_vector(2 downto 0);
			energy_x : in std_logic_vector(10 downto 0));
end Energy_decount;

Architecture energy of Energy_decount is
	begin	
		
		process(clk)

		variable delay : std_logic_vector(25 downto 0):="00000000000000000000000000";
		variable initial_energy : std_logic_vector (6 downto 0):= "0100101";

		begin
		if (rising_edge(clk)) then
				--2^19 counter
				if(delay > "11111111100001111100000110" AND state_num = "011") then
					delay := "00000000000000000000000000";
					initial_energy := initial_energy - "0000001";
					
					if (initial_energy = "0011110") then
						game_over_energy <= '1';
					else
						game_over_energy <= '0';
					end if;
					
				
				else 
				
					
					delay := delay + 1;

				end if;	
				
				
				if(energy_reset = '1' AND state_num = "011" AND energy_x < "00101010100" and energy_x > "00100101100") then
		
						initial_energy := "0100101";
				
				end if;
						
						
		else
		
				
				
		end if;
		

			energy_remaining <= initial_energy;
			


		end process;
		
end architecture energy;
		