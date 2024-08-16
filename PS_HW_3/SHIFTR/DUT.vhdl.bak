-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector: out std_logic_vector(7 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component D3_8 is
port ( i0, i1, i2, e : in std_logic;
		 y0,y1, y2, y3, y4, y5, y6, y7 : out std_logic);
end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   dut_instance: D3_8 port map (i2 => input_vector(3), i1 => input_vector(2), i0 => input_vector(1), e => input_vector(0),
											y7 => output_vector(7), y6 => output_vector(6), y5 => output_vector(5), y4 => output_vector(4), y3 => output_vector(3), y2 => output_vector(2), y1 => output_vector(1), y0 => output_vector(0));
											-- 

end DutWrap;

