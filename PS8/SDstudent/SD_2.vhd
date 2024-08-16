library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity SD_2 is
port( inp:in std_logic_vector(4 downto 0);
reset,clock:in std_logic;
outp: out std_logic);
end SD_2;
architecture bhv of SD_2 is
---------------Define state type here-----------------------------
type state is (rst,s1,s2,s3,s4,s5,s6,s7); -- Fill other states here
---------------Define signals of state type-----------------------
signal y_p,y_n: state:=rst;
begin
clock_proc:process(clock,reset,y_n)
begin
if(clock='1' and clock'event) then
if(reset='1') then
y_p<= rst;-- Fill the code here
else
y_p<=y_n;
-- Fill the code here
end if;
end if;
end process;
state_transition_proc:process(inp,y_p)
begin
case y_p is
when rst=>
		if (unsigned(inp) = 19) then
			y_n <= s1;
			outp <= '0';
		else
			y_n <= y_p;
			outp <= '0';
		end if;
	when s1=>
		if (unsigned(inp) = 20) then
			y_n <= s2;
			outp <= '0';
		else
			y_n <= y_p;
			outp <= '0';
		end if;
	when s2=>
		if (unsigned(inp) = 21) then
			y_n <= s3;
			outp <= '0';
		else
			y_n <= y_p;
			outp <= '0';
		end if;
when s3=>
		if (unsigned(inp) = 4) then
			y_n <= s4;
			outp <= '0';
		else
			y_n <= y_p;
			outp <= '0';
		end if;
	when s4=>
		if (unsigned(inp) = 5) then
			y_n <= s5;
			outp <= '0';
		else
			y_n <= y_p;
			outp <= '0';
		end if;
	when s5=>
		if (unsigned(inp) = 14) then
			y_n <= s6;
			outp <= '0';
		else
			y_n <= y_p;
			outp <= '0';
		end if;
	when s6=>
		if (unsigned(inp) = 20) then
			y_n <= s7;
			outp <= '0';
		else
			y_n <= y_p;
			outp <= '0';
		end if;
	when s7=>
		if (unsigned(inp) = 19) then
			y_n <= s1;
			outp <= '1';
		else
			y_n <= y_p;
			outp <= '0';
		end if;		
end case;
end process;
end architecture;
-------------------------
---------Fill rest of the code here---------
-------Similarly define output process after this which will give
-------the output based on the present state and input (Mealy machine)