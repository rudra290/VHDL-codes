
-- 3 to 8 decorder

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

 
entity D3_8 is
port ( i0, i1, i2, e : in std_logic;
		 y0,y1, y2, y3, y4, y5, y6, y7 : out std_logic);
end entity;


architecture body1 of D3_8 is

component D2_4 is
port ( i0, i1, e : in std_logic;
		 d0, d1 ,d2, d3 : out std_logic );
end component;


signal S1, S2, S3 : std_logic;

begin

	A1 : AND_2 port map( A => i2, B => e, Y => S1 );
	INV1 : INVERTER port map( A => i2, Y => S3);
	A2 : AND_2 port map( A => S3, B => e, Y => S2 );

	
	D1 : D2_4 port map( i0 => i0, i1 => i1, e => S2, d0 => y0, d1 => y1, d2 => y2, d3 => y3 );
	D2 : D2_4 port map( i0 => i0, i1 => i1, e => S1, d0 => y4, d1 => y5, d2 => y6, d3 => y7 );
	
end architecture;