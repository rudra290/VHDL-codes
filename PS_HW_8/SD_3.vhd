library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SD_3 is
	port( inp:in std_logic_vector(4 downto 0);
			reset,clock:in std_logic;
			outp: out std_logic);
end SD_3;

architecture bhv of SD_3 is

---------------Define state type here-----------------------------
	type state is (rst,s11,s12,s13,s21,s22,s23); -- Fill other states here
---------------Define signals of state type-----------------------
	signal y_p1,y_n1,y_p2,y_n2: state:=rst;
	signal o1,o2 : std_logic := '0';
	
-- for Bomb
begin

	clock_proc1:process(clock,reset,y_n1)
		begin
		
			if(clock='1' and clock'event) then

				if(reset='1') then
					y_p1<= rst;-- Fill the code here
				else
					y_p1<=y_n1;
				end if;
			end if;
			
	end process;

	state_transition_proc1:process(inp,y_p1)
		begin
		
			case y_p1 is
			
				when rst=>
				
					if (unsigned(inp) = 2) then
						y_n1 <= s11;
						o1 <= '0';
					else
						y_n1 <= y_p1;
						o1 <= '0';
					end if;
					
				when s11=>
				
					if (unsigned(inp) = 15) then
						y_n1 <= s12;
						o1 <= '0';
					else
						y_n1 <= y_p1;
						o1 <= '0';
					end if;
					
				when s12=>
				
					if (unsigned(inp) = 13) then
						y_n1 <= s13;
						o1 <= '0';
					else
						y_n1 <= y_p1;
						o1 <= '0';
					end if;
					
				when s13=>
				
					if (unsigned(inp) = 2) then
						y_n1 <= s11;
						o1 <= '1';
					else
						y_n1 <= y_p1;
						o1 <= '0';
					end if;
					
				when others=>
				
						y_n1 <= y_p1;
						o1 <= '0';
					
					
				end case;
				
		end process;

	
-- for gun

	clock_proc2:process(clock,reset,y_n2,inp,y_p2)
	
		begin
		
			if(clock='1' and clock'event) then

				if(reset='1') then
					y_p2<= rst;-- Fill the code here
				else
					y_p2<=y_n2;
				end if;
			end if;
			
	end process;

	state_transition_proc2:process(inp,y_p2)
		begin
		
			case y_p2 is
			
				when rst=>
				
					if (unsigned(inp) = 7) then
						y_n2 <= s21;
						o2 <= '0';
					else
						y_n2 <= y_p2;
						o2 <= '0';
					end if;
					
				when s21=>
				
					if (unsigned(inp) = 21) then
						y_n2 <= s22;
						o2 <= '0';
					else
						y_n2 <= y_p2;
						o2 <= '0';
					end if;
					
				when s22=>
				
					if (unsigned(inp) = 14) then
						y_n2 <= s23;
						o2 <= '1';
					else
						y_n2 <= y_p2;
						o2 <= '0';
					end if;
				when s23=>
				
					if (unsigned(inp) = 7) then
						y_n2 <= s21;
						o2 <= '1';
					else
						y_n2 <= y_p2;
						o2 <= '0';
					end if;

				when others=>
				
						y_n2 <= y_p2;
						o2 <= '0';
					
				end case;
				
		end process;

					outp<=o1 or o2;
		
end architecture;
