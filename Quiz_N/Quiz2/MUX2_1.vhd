library ieee;
use ieee.std_logic_1164.all;

entity MUX2_1 is
  port (
    in0, in1, sl : in std_logic;
    out1 : out std_logic
  );
end entity;

architecture Body1 of MUX2_1 is
begin
  process (in0, in1, sl)
  begin
    if sl = '0' then
      out1 <= in0;
    else
      out1 <= in1;
    end if;
  end process;
end architecture;
