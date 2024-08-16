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
	
	signal X0, X1, X2, X3, C0, C1, C2 : std_logic;
begin
	XOR1 : XOR_PS port map ( in1 => B0, in2 => M, out1 => X0 );
	FA1  : FA port map ( in1 => A0, in2 => X0, in3 => M, sum1 => S0, car1 => C0 );
	XOR2 : XOR_PS port map ( in1 => B1, in2 => M, out1 => X1 );
	FA2  : FA port map ( in1 => A1, in2 => X1, in3 => C0, sum1 => S1, car1 => C1 );
	XOR3 : XOR_PS port map ( in1 => B2, in2 => M, out1 => X2 );
	FA3  : FA port map ( in1 => A2, in2 => X2, in3 => C1, sum1 => S2, car1 => C2 );
	XOR4 : XOR_PS port map ( in1 => B3, in2 => M, out1 => X3 );
	FA4  : FA port map ( in1 => A3, in2 => X3, in3 => C2, sum1 => S3, car1 => COUT );
end architecture;