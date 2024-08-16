-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(2 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component D2_4 is
port ( i0, i1, e : in std_logic;
		 d0, d1 ,d2, d3 : out std_logic );
end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   dut_instance: D2_4 port map (i1 => input_vector(2), i0 => input_vector(1), e => input_vector(0),
											d3 => output_vector(3), d2 => output_vector(2), d1 => output_vector(1), d0 => output_vector(0));

end DutWrap;

