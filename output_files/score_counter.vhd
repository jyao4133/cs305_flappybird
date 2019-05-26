LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity score_counter is
	port (clk: in std_logic;
	pipe_x, bird_x : in std_logic_vector(10 downto 0);
			score_ones,score_tens,score_hundreds : out std_logic_vector(9 downto 0);
			increment_score, pipe_collision: in std_logic;
			pickup_x : in std_logic_vector(10 downto 0));
end score_counter;

Architecture score of score_counter is
	begin	
		
		process(pipe_x, bird_x,clk, pipe_collision)
		variable count_ones : std_logic_vector(9 downto 0):= "0000000000";
		variable count_tens : std_logic_vector(9 downto 0):= "0000000000";
		variable count_hundreds : std_logic_vector(9 downto 0):= "0000000000";

		variable delay : std_logic_vector(18 downto 0):="0000000000000000000";
		variable collision_delay : std_logic_vector(25 downto 0):="00000000000000000000000000";
		begin
		if (rising_edge(clk)) then
		
				if(pipe_x = bird_x AND delay > "1100001111100000110") then
					delay := "0000000000000000000";
					if (pipe_collision = '1') then
						count_ones := count_ones;
					else
						count_ones := count_ones + 1;
					end if;
					if (count_ones >= "0000001010")then
						count_ones := "0000000000";
						count_tens := count_tens +1;
						if(count_tens >= "0000001010") then
							count_tens := "0000000000";
							count_hundreds := count_hundreds +1;
						end if;
					end if;
				else 
					delay := delay + 1;

				end if;	
				
				if (increment_score = '1' AND pickup_x < "00101010100" and pickup_x > "00100101100")then
					count_ones := count_ones+1;
					if (count_ones >= "0000001010")then
						count_ones := "0000000000";
						count_tens := count_tens +1;
						if(count_tens >= "0000001010") then
							count_tens := "0000000000";
							count_hundreds := count_hundreds +1;
						end if;
					end if;
					
				end if;
				
		end if;
		
						score_ones <= count_ones;
						score_tens <= count_tens;
						score_hundreds <= count_hundreds;

		end process;
		
end architecture score;
		