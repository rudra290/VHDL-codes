library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decorder is
    port (
        inp : in std_logic_vector(2 downto 0);
        e   : in std_logic;
        oup : out std_logic_vector(7 downto 0)
    );
end entity;

architecture body1 of decorder is
begin

    process (inp, e)
    begin
        if e = '1' then
            for i in 0 to 7 loop
                if to_integer(unsigned(inp)) = i then
                    oup(i) <= '1';
                else
                    oup(i) <= '0';
                end if;
            end loop;
        else
            oup <= (others => '0');
        end if;
    end process;

end architecture;
