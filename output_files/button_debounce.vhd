LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity button_debounce is
	port (clk: in std_logic;
			button_on : out std_logic;	
			button_in : in std_logic

			);
end button_debounce;

Architecture debounce of button_debounce is
	begin	
		
		process(clk)

		variable delay : std_logic_vector(19 downto 0):="00000000000000000000";
		variable button : std_logic;
		begin
		 
		if (rising_edge(clk)) then
				
				--2^19 counter
				if(delay < "11100001111100000110" and button_in = '0') then
										
					delay := delay + 1;

				elsif (delay >= "11100001111100000110") then
					delay := "00000000000000000000";
					button := '1';
					
		
		
				elsif (button_in = '1') then
					delay := "00000000000000000000";
					button := '0';
				

				end if;	
				
--				
--				if(energy_reset = '1' AND state_num = "011" AND energy_x < "00101010100" and energy_x > "00100101100") then
--		
--						initial_energy := "0100101";
--				
--				end if;
--						
						
		else
		
				
		end if;
		

				button_on <= button;


		end process;
		
end architecture debounce;
		