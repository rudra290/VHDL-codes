library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity FA_4BIT_B is
    port ( 
        M : in std_logic;
        A, B : in std_logic_vector(3 downto 0);
        COUT : out std_logic;
        S : out std_logic_vector(3 downto 0)
    );
end entity;

architecture body1 of FA_4BIT_B is
    component FA is
        port (
            in1, in2, in3 : in std_logic;
            sum1, car1 : out std_logic
        );
    end component;
    
    component XOR_PS is
        port (
            in1, in2: in std_logic; 
            out1 : out std_logic
        );
    end component;
    
    signal X : std_logic_vector(3 downto 0);
    signal Cin : std_logic_vector(4 downto 0);
    signal co : std_logic_vector(3 downto 0);
    
begin
    -- XOR Gates
    XOR1: XOR_PS port map ( in1 => B(0), in2 => M, out1 => X(0) );
    XOR2: XOR_PS port map ( in1 => B(1), in2 => M, out1 => X(1) );
    XOR3: XOR_PS port map ( in1 => B(2), in2 => M, out1 => X(2) );
    XOR4: XOR_PS port map ( in1 => B(3), in2 => M, out1 => X(3) );
    
    Cin(0) <= M;

    process(A, X, Cin)
    begin
        for i in 0 to 3 loop
            -- Instantiate FA component in the loop
			
            -- Update carry
    

    
    end process;

end architecture;
