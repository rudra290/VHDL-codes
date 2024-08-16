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

signal mm1 : std_logic_vector(7 downto 0);
signal c : std_logic_vector(7 downto 0);
signal temp : std_logic_vector(2 downto 0);
signal m1 : std_logic;


begin
	
		inv : INVERTER port map ( A => M, Y => m1);
		
		temp(0) <= M;
		temp(1) <= m1;
		temp(2) <= '0';
		
		shift : SHIFTR port map( a(7 downto 0) => A(7 downto 0), B(2 downto 0) => temp(2 downto 0), l => '1', s(7 downto 0) => mm1(7 downto 0));
		c(0) <='0';
		ADD : for i in 0 to 6 generate
			FA1 : FA port map(in1 => mm1(i), in2 => A(i), in3 => c(i), sum1 => y(i), car1 => c(i+1)); 
		end generate;
		   FA2 : FA port map(in1 => mm1(7), in2 => A(7), in3 => c(7), sum1 => y(7));
			  
end architecture;