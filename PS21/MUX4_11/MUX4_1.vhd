library ieee;
use ieee.std_logic_1164.all;

entity MUX4_1 is
port ( i0,i1,i2,i3,s0,s1 : in std_logic;
		 out1 : out std_logic);
end entity;

architecture body1 of MUX4_1 is
 component MUX2_1 is
  port (
    in0, in1, sl : in std_logic;
    out1 : out std_logic
  );
end component;
signal y0, y1 : std_logic;
begin
		M1 : MUX2_1 port map( in0 => i0, in1 => i1, sl => s0, out1 => Y0);
		M2 : MUX2_1 port map( in0 => i2, in1 => i3, sl => s0, out1 => Y1);
		M3 : MUX2_1 port map( in0 => Y0, in1 => Y1, sl => s1, out1 => out1);
end architecture;
