LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Energy_decount is
	port (clk: in std_logic;
			energy_remaining : out std_logic_vector(6 downto 0);
			game_over_energy : out std_logic);
end Energy_decount;

Architecture energy of Energy_decount is
	begin	
		
		process(clk)

		variable delay : std_logic_vector(25 downto 0):="00000000000000000000000000";
		variable initial_energy : std_logic_vector (6 downto 0):= "0100101";

		begin
		if (rising_edge(clk)) then
				--2^19 counter
				if(delay > "11111111100001111100000110") then
					delay := "00000000000000000000000000";
					initial_energy := initial_energy - "0000001";
					
					if (initial_energy = "0011110") then
						initial_energy := "0100101";
						game_over_energy <= '1';
					end if;
					
				
				else 
					delay := delay + 1;

				end if;	
		end if;
		
						energy_remaining <= initial_energy;

		end process;
		
end architecture energy;
		