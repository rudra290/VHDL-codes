library ieee;
use ieee.std_logic_1164.all;

entity MUX44_1 is
port ( a0,a1,a2,a3 : in std_logic;
		 b0,b1,b2,b3 : in std_logic;
		 c0,c1,c2,c3 : in std_logic;
		 d0,d1,d2,d3 : in std_logic;
		 s0,s1       : in std_logic;
		 y0,y1,y2,y3 : out std_logic );
end entity;

architecture body2 of MUX44_1 is
component MUX4_1 is
port ( i0,i1,i2,i3,s0,s1 : in std_logic;
		 out1 : out std_logic);
end component;
begin
		M1 : MUX4_1 port map( i0 => a0, i1 => b0, i2 => c0, i3 => d0, s0 => s0, s1 => s1, out1 => y0);
		M2 : MUX4_1 port map( i0 => a1, i1 => b1, i2 => c1, i3 => d1, s0 => s0, s1 => s1, out1 => y1);
		M3 : MUX4_1 port map( i0 => a2, i1 => b2, i2 => c2, i3 => d2, s0 => s0, s1 => s1, out1 => y2);
		M4 : MUX4_1 port map( i0 => a3, i1 => b3, i2 => c3, i3 => d3, s0 => s0, s1 => s1, out1 => y3);
end architecture;