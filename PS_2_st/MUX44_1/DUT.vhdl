-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(17 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component MUX44_1 is
 port ( a0,a1,a2,a3 : in std_logic;
		 b0,b1,b2,b3 : in std_logic;
		 c0,c1,c2,c3 : in std_logic;
		 d0,d1,d2,d3 : in std_logic;
		 s0,s1       : in std_logic;
		 y0,y1,y2,y3 : out std_logic );
end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   dut_instance: MUX44_1 port map (d3 => input_vector(17), d2 => input_vector(16), d1 => input_vector(15), d0 => input_vector(14),
											  c3 => input_vector(13), c2 => input_vector(12), c1 => input_vector(11), c0 => input_vector(10),
											  b3 => input_vector(9), b2 => input_vector(8), b1 => input_vector(7), b0 => input_vector(6),
											  a3 => input_vector(5), a2 => input_vector(4), a1 => input_vector(3), a0 => input_vector(2),
											  s1 => input_vector(1), s0 => input_vector(0),
											  y3 => output_vector(3), y2 => output_vector(2), y1 => output_vector(1), y0 => output_vector(0));

end DutWrap;

