library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
use work.XOR_PS1.all;
use work.AND_PS1.all;
entity HA is
port ( in1, in2 : in std_logic;
		 sum1, car1 : out std_logic);
end entity;

architecture body1 of HA is

begin
	XOR1 : XOR_PS port map( in1 => in1, in2 => in2, out1 => sum1);
	AND1 : AND_PS port map( in1 => in1, in2 => in2, out1 => car1);
end architecture;