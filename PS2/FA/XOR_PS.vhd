library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

package XOR_PS1 is
  component XOR_PS is
		port (in1, in2: in std_logic; out1 : out std_logic);
  end component;
end package;

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity XOR_PS is
		port (in1, in2: in std_logic; out1 : out std_logic);
end entity;

architecture body1 of XOR_PS is
	signal Y1,Y2,Y3,Y4 : std_logic;
begin
	NAND_01 : NAND_2 port map( A => in2, B => in2, Y => Y1 );
	NAND_02 : NAND_2 port map( A => in1, B => in1, Y => Y2 );
	NAND_03 : NAND_2 port map( A => in1, B => Y1, Y => Y3 );
	NAND_04 : NAND_2 port map( A => Y2, B => in2, Y => Y4 );
	NAND_05 : NAND_2 port map( A => Y3, B => Y4, Y => out1 );
end architecture;
		 