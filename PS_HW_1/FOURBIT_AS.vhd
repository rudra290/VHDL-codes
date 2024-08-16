library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity FOURBIT_AS is
	port ( A0, A1, A2, A3, B0, B1, B2, B3, M : in std_logic ;
			 S0, S1, S2, S3, COUT : out std_logic );
end entity;

architecture body1 of FOURBIT_AS is 
	component FA is
	port (in1, in2, in3 : in std_logic;
			sum1, car1 : out std_logic);
	end component;
	
	component XOR_PS is
		port (in1, in2: in std_logic; out1 : out std_logic);
	end component;
	
	signal X1 : std_logic;
begin
	XOR1	 : XOR_PS port map ( in1 => B0, in2 => M, out1 => X1 );
end architecture;