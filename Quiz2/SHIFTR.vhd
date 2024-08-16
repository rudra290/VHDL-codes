library ieee;
use ieee.std_logic_1164.all;

entity bit_reversal is --bit reversal entity
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

entity SHIFTR is -- universal shifter
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

	signal v,w,x,y : std_logic_vector(7 downto 0);

begin 
		BR1 : bit_reversal port map( enable => l, inp(7 downto 0) =>  a(7 downto 0), oup(7 downto 0) => W(7 downto 0)); -- bit reversal ( for l = 0 right shift, l = 1 left shift)
		
		   
		       BIT_4 : for i in 0 to 7 generate -- For 4 bit shift
               BIT_41 : if i < 4 generate
						  mux41 : MUX2_1 port map( in0 => w(i), in1 => w(i+4), sl => b(2), out1 => x(i));
					end generate BIT_41;
               BIT_42 : if i > 3 generate
						  mux42 : MUX2_1 port map( in0 => w(i), in1 => '0', sl => b(2), out1 => x(i));              
                end generate BIT_42;
           end generate BIT_4;

				 BIT_2 : for i in 0 to 7 generate -- For 2 bit shift
               BIT_21 : if i < 6 generate
						  mux21 : MUX2_1 port map( in0 => x(i), in1 => x(i+2), sl => b(1), out1 => y(i));
					end generate BIT_21;
               BIT_22 : if i > 5 generate
						  mux22 : MUX2_1 port map( in0 => x(i), in1 => '0', sl => b(1), out1 => y(i));              
                end generate BIT_22;
           end generate BIT_2;
            

				 BIT_1 : for i in 0 to 7 generate -- for 1 bit shift
               BIT_11 : if i < 7 generate
						  mux11 : MUX2_1 port map( in0 => y(i), in1 => y(i+1), sl => b(0), out1 => v(i));
					end generate BIT_11;
               BIT_12 : if i > 6 generate
						  mux12 : MUX2_1 port map( in0 => y(i), in1 => '0', sl => b(0), out1 => v(i));              
                end generate BIT_12;
           end generate BIT_1;
		BR2 : bit_reversal port map( enable => l, inp(7 downto 0) =>  v(7 downto 0), oup(7 downto 0) => s(7 downto 0));
end architecture;

