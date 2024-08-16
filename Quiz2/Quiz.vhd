library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity Quiz is
port( A : in std_logic_vector(7 downto 0);
		M : in std_logic;
		Y : out std_logic_vector(7 downto 0)
	 );
end entity;

architecture body1 of Quiz is
component FA is
	port (in1, in2, in3 : in std_logic;
			sum1, car1 : out std_logic);
end component;

component HA is
		port ( in1, in2 : in std_logic;
		 sum1, car1 : out std_logic);
end component;

component SHIFTR is -- universal shifter
port (
        a : in std_logic_vector(7 downto 0);
        b : in std_logic_vector(2 downto 0);
        l : in std_logic;
        s : out std_logic_vector(7 downto 0)
    );
end component;

signal Mul : std_logic_vector(2 downto 0);
signal mm1,mm2,mm3,mm22,mm23 : std_logic_vector(7 downto 0);
signal s,c,cn,cnn : std_logic_vector(7 downto 0);
signal temp1, temp2 : std_logic_vector(2 downto 0);
signal m1 : std_logic;


begin
	mul(0) <= '1';
	x1 : XOR_2 port map( A => '0', B => M, Y => mul(1));
	x2 : XOR_2 port map( A => '1', B => M, Y => mul(2));
	
--	and1 : AND_2 port map( A => A(0), B => mul(2), Y => mm(0));
--	and2 : AND_2 port map( A => A(1), B => mul(2), Y => mm(1));
--	and3 : AND_2 port map( A => A(2), B => mul(2), Y => mm(2));
--	and4 : AND_2 port map( A => A(3), B => mul(2), Y => mm(3));
--	and5 : AND_2 port map( A => A(4), B => mul(2), Y => mm(4));
--	and6 : AND_2 port map( A => A(5), B => mul(2), Y => mm(5));
--	and7 : AND_2 port map( A => A(6), B => mul(2), Y => mm(6));
--	and8 : AND_2 port map( A => A(7), B => mul(2), Y => mm(7));
--	and9 : AND_2 port map( A => A(0), B => mul(1), Y => mm(8));
--	and10 : AND_2 port map( A => A(1), B => mul(1), Y => mm(9));
--	and11 : AND_2 port map( A => A(2), B => mul(1), Y => mm(10));
--	and12 : AND_2 port map( A => A(3), B => mul(1), Y => mm(11));
--	and13 : AND_2 port map( A => A(4), B => mul(1), Y => mm(12));
--	and14 : AND_2 port map( A => A(5), B => mul(1), Y => mm(13));
--	and15 : AND_2 port map( A => A(6), B => mul(1), Y => mm(14));
--	and16 : AND_2 port map( A => A(7), B => mul(1), Y => mm(15));
--	and17 : AND_2 port map( A => A(0), B => mul(0), Y => mm(16));
--	and18 : AND_2 port map( A => A(1), B => mul(0), Y => mm(17));
--	and19 : AND_2 port map( A => A(2), B => mul(0), Y => mm(18));
--	and20 : AND_2 port map( A => A(3), B => mul(0), Y => mm(19));
--	and21 : AND_2 port map( A => A(4), B => mul(0), Y => mm(20));
--	and22 : AND_2 port map( A => A(5), B => mul(0), Y => mm(21));
--	and23 : AND_2 port map( A => A(6), B => mul(0), Y => mm(22));
--   and24 : AND_2 port map( A => A(7), B => mul(0), Y => mm(23));

		BIT_4 : for i in 0 to 7 generate -- For 4 bit shift

						  A1 : AND_2 port map( A => mul(2), B => A(i), Y => mm1(i));
						  A2 : AND_2 port map( A => mul(1), B => A(i), Y => mm2(i));
						  A3 : AND_2 port map( A => mul(0), B => A(i), Y => mm3(i));
           end generate BIT_4;
			  
			  temp2(2) <= '0';
			  inv : INVERTER port map( A => M, Y => m1); 
			  temp2(1) <= '0';
			  temp2(0) <= m1;
			  
			  temp1(2) <= '0';
			  temp1(1) <= m1;
			  temp1(0) <= M;
		
			  
		shift : SHIFTR port map( A(7 downto 0) => mm2(7 downto 0),b(2 downto 0) => temp2(2 downto 0), l => '1', s(7 downto 0) => mm22(7 downto 0));
		shift1 : SHIFTR port map( A(7 downto 0) => mm3(7 downto 0),b(2 downto 0) => temp1(2 downto 0), l => '1', s(7 downto 0) => mm23(7 downto 0));
		
		
						FA1 : FA port map( in1 => mm1(0), in2 => mm22(0), in3 => mm23(0), sum1 => y(0), car1 => c(0));
		BIT_41 : for i in 1 to 7 generate -- For 4 bit shift
						FA2 : FA port map( in1 => mm1(i), in2 => mm22(i), in3 => mm23(i), sum1 => s(i), car1 => cnn(i));
						HA2 : HA port map( in1 => s(i), in2 => c(i-1), sum1 => y(i),car1 => cn(i));
						HA3 : HA port map( in1 => cn(i), in2 => cnn(i), sum1 => c(i));
           end generate BIT_41;
			  
			  
end architecture;