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
	
component decorder is
 port (
        inp : in std_logic_vector(2 downto 0);
        e   : in std_logic;
        oup : out std_logic_vector(7 downto 0)
    );
end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   dut_instance: decorder port map ( inp(2 downto 0) => input_vector(3 downto 1), e => input_vector(0), oup(7 downto 0) => output_vector(7 downto 0));
end DutWrap;

