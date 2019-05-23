LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity score_counter is
	port (clk: in std_logic;
	pipe_x, bird_x : in std_logic_vector(10 downto 0);
			score_ones,score_tens : out std_logic_vector(9 downto 0));
end score_counter;

Architecture score of score_counter is
	begin	
		
		process(pipe_x, bird_x,clk)
		variable count_ones : std_logic_vector(9 downto 0):= "0000000000";
		variable count_tens : std_logic_vector(9 downto 0):= "0000000000";
		variable delay : std_logic_vector(18 downto 0):="0000000000000000000";

		begin
		if (rising_edge(clk)) then
		
				if(pipe_x = bird_x AND delay > "1100001111100000110") then
					delay := "0000000000000000000";

					count_ones := count_ones + 1;
					if (count_ones >= "0000001010")then
						count_ones := "0000000000";
						count_tens := count_tens +1;
					end if;
				else 
					delay := delay + 1;

				end if;	
		end if;
		
						score_ones <= count_ones;
						score_tens <= count_tens;

		end process;
		
end architecture score;
		