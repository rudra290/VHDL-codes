library ieee;
use ieee.std_logic_1164.all;

entity bit_reversal is
    port (
        inp : in std_logic_vector(7 downto 0);
        enable : in std_logic;
        oup : out std_logic_vector(7 downto 0)
    );
end entity;

architecture body_BR of bit_reversal is
begin
    process(inp, enable)
    begin
        if enable = '1' then
            oup <= inp(0) & inp(1) & inp(2) & inp(3) & inp(4) & inp(5) & inp(6) & inp(7);
        else
            oup <= inp;
        end if;
    end process;
end architecture;

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
end entity;

architecture body_SR of SHIFTR is

component bit_reversal is
    port (
        inp : in std_logic_vector(7 downto 0);
        enable : in std_logic;
        oup : out std_logic_vector(7 downto 0)
    );
end component;

component MUX2_1 is
  port (
    in0, in1, sl : in std_logic;
    out1 : out std_logic
  );
end component;

	signal v,W : std_logic_vector(7 downto 0);

begin 
		
		BR1 : bit_reversal port map( enable => l, inp(7 downto 0) =>  a(7 downto 0), oup(7 downto 0) => W(7 downto 0));
		BR2 : bit_reversal port map( enable => l, inp(7 downto 0) =>  v(7 downto 0), oup(7 downto 0) => s(7 downto 0));
		

    process ( b,v,w )
	 variable x,y : std_logic_vector(7 downto 0);
    begin
   
		       for i in 0 to 7 loop
                if i < 4 then
                    if b(2) = '1' then
                        x(i) := w(i + 4);
                    else
                        x(i) := w(i);
                    end if;
                else
                    if b(2) = '1' then
                        x(i) := '0';
                    else
                        x(i) := w(i);
                    end if;
                end if;
            end loop;
	
				 for i in 0 to 7 loop
                if i < 6 then
                    if b(1) = '1' then
                        y(i) := x(i + 2);
                    else
                        y(i) := x(i);
                    end if;
                else
                    if b(1) = '1' then
                        y(i) := '0';
                    else
                        y(i) := x(i);
                    end if;
                end if;
            end loop;

            
				for i in 0 to 7 loop
                if i < 7 then
                    if b(0) = '1' then
                        v(i) <= y(i + 1);
                    else
                        v(i) <= y(i);
                    end if;
                else
                    if b(0) = '1' then
                        v(i) <= '0';
                    else
                        v(i) <= y(i);
                    end if;
						  
                end if;
					 
            end loop;
				
		end process;
			
end architecture;

