library ieee;
use ieee.std_logic_1164.all;
library work;
use work.HA1.all;
use work.OR_PS1.all;

entity FA is
	port (in1, in2, in3 : in std_logic;
			sum1, car1 : out std_logic);
end entity;

architecture body1 of FA is
	signal s1,c1,c2 : std_logic;

begin
	HA_1 : HA port map( in1 => in1, in2 => in2, sum1 => s1, car1 => c1);
	HA_2 : HA port map( in1 => s1, in2 => in3, sum1 => sum1, car1 => c2);
	OR1 : OR_PS port map( in1 => c1, in2 =>C2, out1 => car1);
end architecture;
	