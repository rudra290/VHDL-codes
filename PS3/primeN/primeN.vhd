library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity primeN is
port ( x3,x2,x1,x0 : in std_logic;
		 y : out std_logic );
end entity;

architecture body1 of primeN is

	signal xi1, xi2, xi3, p0, p1, p2, p3, s0, s1, s2, s3, ss0, ss1 : std_logic ;

	begin

		INV1 : INVERTER port map ( A => x1, Y => xi1 );
		INV2 : INVERTER port map ( A => x2, Y => xi2 );
		INV3 : INVERTER port map ( A => x3, Y => xi3 );
		
		AND00 : AND_2 port map ( A => x0, B => x1, Y => p0 );
		AND01 : AND_2 port map ( A => p0, B => xi2, Y => s0 );
		
		AND10 : AND_2 port map ( A => xi2, B => xi3, Y => p1 );
		AND11 : AND_2 port map ( A => p1, B => x1, Y => s1 );
		
		AND20 : AND_2 port map ( A => xi3, B => x2, Y => p2 );
		AND21 : AND_2 port map ( A => p2, B => x0, Y => s2 );
		
		AND30 : AND_2 port map ( A => xi1, B => x0, Y => p3 );
		AND31 : AND_2 port map ( A => p3, B => x2, Y => s3 );
		
		OR1 : OR_2 port map ( A => s0, B => s1, Y => ss0 );
		OR2 : OR_2 port map ( A => ss0, B => s2, Y => ss1 );
		OR3 : OR_2 port map ( A => ss1, B => s3, Y => y );
		
end architecture;