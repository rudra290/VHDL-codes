library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

package OR_PS1 is
	component OR_PS is
		 port ( in1, in2 : in std_logic;
		 out1 : out std_logic );
	end component;
end package;

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity OR_PS is
port ( in1, in2 : in std_logic;
		 out1 : out std_logic );
end entity;

architecture body1 of OR_PS is
	signal Y1,Y2 : std_logic;
begin
	NAND_01 : NAND_2 port map( A => in1, B => in1, Y => Y1 );
	NAND_02 : NAND_2 port map( A => in2, B => in2, Y => Y2 );
	NAND_03 : NAND_2 port map( A => Y1, B => Y2, Y => out1 );
end architecture;
		 