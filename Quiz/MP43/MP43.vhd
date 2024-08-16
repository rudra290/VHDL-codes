library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity MP43 is
port ( A : in std_logic_vector(3 downto 0);
		 b : in std_logic_vector(2 downto 0);
		 M : out std_logic_vector(6 downto 0)
		 );
end entity;

architecture Body1 of MP43 is

component FA is
	port (in1, in2, in3 : in std_logic;
			sum1, car1 : out std_logic);
end component;

component HA is
port ( in1, in2 : in std_logic;
		 sum1, car1 : out std_logic);
end component;

signal mul : std_logic_vector(11 downto 0);
signal c0, c1 : std_logic_vector(3 downto 0);
signal s, c : std_logic_vector(3 downto 0);
signal s1 : std_logic_vector(3 downto 0);

begin

	mul0 : AND_2 port map( A => A(0), B => B(0), Y => mul(0));
	mul1 : AND_2 port map( A => A(1), B => B(0), Y => mul(1));
	mul2 : AND_2 port map( A => A(2), B => B(0), Y => mul(2));
	mul3 : AND_2 port map( A => A(3), B => B(0), Y => mul(3));
	mul4 : AND_2 port map( A => A(0), B => B(1), Y => mul(4));
	mul5 : AND_2 port map( A => A(1), B => B(1), Y => mul(5));
	mul6 : AND_2 port map( A => A(2), B => B(1), Y => mul(6));
	mul7 : AND_2 port map( A => A(3), B => B(1), Y => mul(7));
	mul8 : AND_2 port map( A => A(0), B => B(2), Y => mul(8));
	mul9 : AND_2 port map( A => A(1), B => B(2), Y => mul(9));
	mul10 : AND_2 port map( A => A(2), B => B(2), Y => mul(10));
	mul11 : AND_2 port map( A => A(3), B => B(2), Y => mul(11));
	
	M(0) <= mul(0); 
	
	form1 : HA port map( in1 => mul(1), in2 => mul(4), sum1 => M(1), car1 => c0(0));
	c1(0) <= '0';
	
	form2 : FA port map( in1 => mul(2), in2 => mul(5), in3 => mul(8), sum1 => s(0), car1 => c(0));
	HA_01 : HA port map( in1 => s(0), in2 => c0(0), sum1 => M(2), car1 => s1(0));
	FA_01 : FA port map( in1 => s1(0), in2 => c(0), in3 => c1(0), sum1 => c0(1), car1 => c1(1));
	
	form3 : FA port map( in1 => mul(3), in2 => mul(6), in3 => mul(9), sum1 => s(1), car1 => c(1));
	HA_11 : HA port map( in1 => s(1), in2 => c0(1), sum1 => M(3), car1 => s1(1));
	FA_11 : FA port map( in1 => s1(1), in2 => c(1), in3 => c1(1), sum1 => c0(2), car1 => c1(2));
	
	form4 : HA port map( in1 => mul(7), in2 => mul(10), sum1 => s(2), car1 => c(2));
	HA_21 : HA port map( in1 => s(2), in2 => c0(2), sum1 => M(4), car1 => s1(2));
	FA_21 : FA port map( in1 => s1(2), in2 => c(2), in3 => c1(2), sum1 => c0(3), car1 => c1(3));
	
	s(3) <= mul(11);
	c(3) <= '0';
	HA_31 : HA port map( in1 => s(3), in2 => c0(3), sum1 => M(5), car1 => s1(3));
	FA_31 : FA port map( in1 => s1(3), in2 => c(3), in3 => c1(3), sum1 => M(6));

	
	
end architecture;
		