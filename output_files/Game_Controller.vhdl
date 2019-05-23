
-- A Synchronous Mealy machine to control the game
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Game_Controller is
	port(
		clk,mouse_click,sw_0,player_dead: in std_logic;
		state_num :out std_logic_vector(2 downto 0)
		);
end entity;

architecture rtl of Game_Controller is
	-- Build an enumerated type for the state machine
	type state_type is (s_start,s_play,s_pause,s_gameover);
	-- Register (and signal) to hold the current (and next) state
	signal state, next_state : state_type := s_start;
	begin
		state_reg:process(clk)
			begin
			 if rising_edge(clk) then
				state <= next_state;
			 end if;
			end process;
		-- Determine the next state based only on the current state
	   -- and the input (do not wait for a clock edge).	
		next_state_fn:process(state,clk,sw_0,mouse_click)
			begin
				if(rising_edge(clk)) then
					case state is
						
						when s_start =>
							if(mouse_click='1') then
								next_state <= s_play;
							else
								next_state <= s_start;
							end if;
						when s_play =>
							if(sw_0='1') then
								next_state <= s_pause;
							else
								next_state <= s_play;
							end if; 
							
						when s_pause =>
							if(sw_0='0') then
								next_state <= s_play;
							else
								next_state <= s_pause;
							end if; 
						when others =>
						
					end case;
				end if;
			end process;
		-- Determine the output based only on the current state
		-- and the input. 
		
		output_fn: process (state)
			begin
				
					case state is
					
						when s_start =>
							state_num<="001"; -- 001 for when the state is "start" 
						when s_play =>
							state_num<="010"; -- 010 for when the state is "play"
						when s_pause =>
							state_num<="011"; -- 011 for when the state is "pause"
						when s_gameover =>
							state_num<="100"; -- 100 for when the state is "gameover"
					end case;
							
	end process;
	
	
end rtl;	
