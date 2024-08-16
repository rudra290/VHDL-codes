library ieee; //Standart library
use ieee.std_logic_1164.all;
library work; 
use work.Gates.all; //Library which is given

entity MUX_21 is // To define all ports and timing information
  port ( 
    in0, in1, sl : in std_logic;
    out1 : out std_logic
  );
end entity;

architecture Body1 of MUX_21 is // Behavioural of entity

	signal sli, w1, w2 : std_logic; // Just like wires in Verilog 
	
begin

		inv : INVERTER port map ( A => sl, Y => sli);
		and1 : AND_2 port map ( A => sli, B => in0, Y => w1);
		and2 : AND_2 port map ( A => sl, B => in1, Y => w2);
		or1 : OR_2 port map ( A => w1, B => w2, Y => out1);
		
end architecture;
 