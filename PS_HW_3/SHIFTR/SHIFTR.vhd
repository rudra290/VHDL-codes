library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity SHIFTR is
    port (
        a : in std_logic_vector(7 downto 0);
        b : in std_logic_vector(2 downto 0);
        l : in std_logic;
        s : out std_logic_vector(7 downto 0)
    );
end entity SHIFTR;

architecture body1 of SHIFTR is

    component MUX2_1 is
        port (
            in0, in1 : in std_logic;
            sl : in std_logic;
            out1 : out std_logic
        );
    end component;

    signal x, y : std_logic_vector(7 downto 0);

begin

    process (a, b, l, x, y)
    begin
        if l = '0' then -- right shift
		       for i in 0 to 7 loop
                if i < 4 then
                    if b(2) = '1' then
                        x(i) <= a(i + 4);
                    else
                        x(i) <= a(i);
                    end if;
                else
                    if b(2) = '1' then
                        x(i) <= '0';
                    else
                        x(i) <= a(i);
                    end if;
                end if;
            end loop;
		--0 010 01000000 00000000 c0: 00010000
				 for i in 0 to 7 loop
                if i < 6 then
                    if b(1) = '1' then
                        y(i) <= x(i + 2);
                    else
                        y(i) <= x(i);
                    end if;
                else
                    if b(1) = '1' then
                        y(i) <= '0';
                    else
                        y(i) <= x(i);
                    end if;
                end if;
            end loop;
				
  --0 001 00000100 00000010
            
				for i in 0 to 7 loop
                if i < 7 then
                    if b(0) = '1' then
                        s(i) <= y(i + 1);
                    else
                        s(i) <= y(i);
                    end if;
                else
                    if b(0) = '1' then
                        s(i) <= '0';
                    else
                        s(i) <= y(i);
                    end if;
                end if;
            end loop;
            
            
      
        else -- left shift
            for i in 0 to 7 loop
                if i > 3 then
                    if b(2) = '1' then
                        x(i) <= a(i - 4);
                    else
                        x(i) <= a(i);
                    end if;
                else
                    if b(2) = '1' then
                        x(i) <= '0';
                    else
                        x(i) <= a(i);
                    end if;
                end if;
            end loop;
            
            for i in 0 to 7 loop
                if i > 1 then
                    if b(1) = '1' then
                        y(i) <= x(i - 2);
                    else
                        y(i) <= x(i);
                    end if;
                else
                    if b(1) = '1' then
                        y(i) <= '0';
                    else
                        y(i) <= x(i);
                    end if;
                end if;
            end loop;
            
            for i in 0 to 7 loop
                if i > 0 then
                    if b(0) = '1' then
                        s(i) <= y(i - 1);
                    else
                        s(i) <= y(i);
                    end if;
                else
                    if b(0) = '1' then
                        s(i) <= '0';
                    else
                        s(i) <= y(i);
                    end if;
                end if;
            end loop;
        end if;
    end process;

end architecture body1;
