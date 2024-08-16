library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity BCD is
port ( a,b : in std_logic_vector(3 downto 0);
		 car : out std_logic;
		 y : out std_logic_vector( 3 downto 0));
end entity;


architecture body1 of BCD is

	component FOURBIT_AS is
	port ( A0, A1, A2, A3, B0, B1, B2, B3, M : in std_logic ;
			 S0, S1, S2, S3, COUT : out std_logic );
	end component;
	
	signal sig1,sig2 : std_logic_vector(3 downto 0);
	signal CO1, CO2, y4, car1, X1, X2, X3 : std_logic;
	
	begin
	
		FA1 : FOURBIT_AS port map( A0 => a(0),  A1 => a(1),  A2 => a(2),  A3 => a(3),  
											b0 => b(0),  b1 => b(1),  b2 => b(2),  b3 => b(3),  M => '0',
											S0 => sig1(0), S1 => sig1(1), S2 => sig1(2), S3 => sig1(3), COUT => CO1);
											
		AND1 : AND_2 port map( A => sig1(3), B => sig1(2), Y => X1);
		AND2 : AND_2 port map( A => sig1(3), B => sig1(1), Y => X2);
		
		OR1 : OR_2 port map( A => X1, B => X2, Y => X3);
		OR2 : OR_2 port map( A => X3, B => CO1, Y => car1);
		
		sig2(0) <= '0';
		sig2(1) <= car1;
		sig2(2) <= car1;
		sig2(3) <= '0';
		
				 
		car <= car1;
				 
		FA2 : FOURBIT_AS port map( A0 => sig1(0),  A1 => sig1(1),  A2 => sig1(2),  A3 => sig1(3),  
											b0 => sig2(0),  b1 => sig2(1),  b2 => sig2(2),  b3 => sig2(3), M => '0', 
											S0 => y(0), S1 => y(1), S2 => y(2), S3 => y(3), COUT => y4);
end architecture;
											
