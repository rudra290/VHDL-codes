-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(2 downto 0);
       	output_vector: out std_logic_vector(1 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component FA is
port (in1, in2, in3 : in std_logic;
			sum1, car1 : out std_logic);
end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   dut_instance: FA port map (in3 => input_vector(2), in2 => input_vector(1),in1 => input_vector(0),
											sum1 => output_vector(1), car1 => output_vector(0));

end DutWrap;

