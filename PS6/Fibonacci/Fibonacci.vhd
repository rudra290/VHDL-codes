library ieee;
use ieee.std_logic_1164.all;
library work;
use work.gates.all;
use ieee.numeric_std.all;

entity Fibonacci is
    port (
        ip : in std_logic_vector(9 downto 0);
        y : out std_logic
    );
end entity;

architecture body1 of Fibonacci is
begin
    process (ip)
        variable op : std_logic;
        variable p, q, r, temp : integer;
 
    begin
        temp := to_integer(unsigned(ip));
        op := '0';
        p := 1;
        q := 1;

        if temp < 1 then
            op := '1';
        else
            for i in 2 to 1024 loop
                if q >= temp then
                    exit; 
                end if;
                r := q;
                q := q + p;
                p := r;
            end loop;

            if temp = q then
                op := '1';
            else
                op := '0';
            end if;
        end if;

        y <= op;
    end process;
end architecture;
