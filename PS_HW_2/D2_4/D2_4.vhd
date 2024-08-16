
-- 2 to 4 decorder

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;


entity D2_4 is
port ( i0, i1, e : in std_logic;
		 d0, d1 ,d2, d3 : out std_logic );
end entity;


architecture body1 of D2_4 is
	signal i_0, i_1, X0, X1, X2, X3 : std_logic;
	
	begin
	
		N1 : INVERTER port map( A => i0, Y => i_0 );
		N2 : INVERTER port map( A => i1, Y => i_1 );
		
		And1 : AND_2  port map( A => i_0, B => i_1, Y => X0 ); 
		And1_1 : AND_2  port map( A => X0, B => e, Y => d0 ); -- 00 : d0 = 1
		
		And2 : AND_2  port map( A => i0, B => i_1, Y => X1 ); 
		And2_1 : AND_2  port map( A => X1, B => e, Y => d1 ); -- 01 : d1 = 1 
		
		And3 : AND_2  port map( A => i_0, B => i1, Y => X2 );
		And3_1 : AND_2  port map( A => X2, B => e, Y => d2 ); -- 10 : d2 = 1
		
		And4 : AND_2  port map( A => i0, B => i1, Y => X3 );
		And4_1 : AND_2  port map( A => X3, B => e, Y => d3 ); -- 11 : d3 = 1
		
end architecture;