-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity SHIFTR_tb is
end;

architecture bench of SHIFTR_tb is

  component SHIFTR
      port (
          inp : in std_logic_vector(7 downto 0);
          enable : in std_logic;
          oup : out std_logic_vector(7 downto 0)
      );
  end component;

  signal inp: std_logic_vector(7 downto 0);
  signal enable: std_logic;
  signal oup: std_logic_vector(7 downto 0) ;

begin

  uut: SHIFTR port map ( inp    => inp,
                         enable => enable,
                         oup    => oup );

  stimulus: process
  begin
  
    -- Put initialisation code here


    -- Put test bench stimulus code here

    wait;
  end process;


end;