library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

package AND_PS1 is
  component AND_PS is
		port (in1, in2: in std_logic; out1 : out std_logic);
  end component;
end package;

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity AND_PS is
port ( in1, in2 : in std_logic;
		 out1 : out std_logic );
end entity;

architecture body1 of AND_PS is
	signal Y1 : std_logic;
begin
	NAND_01 : NAND_2 port map( A => in1, B => in2, Y => Y1 );
	NAND_02 : NAND_2 port map( A => Y1, B => Y1, Y => out1 );
end architecture;
		 