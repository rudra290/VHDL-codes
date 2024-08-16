library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is
  port (
    A   : in std_logic_vector(3 downto 0);
    B   : in std_logic_vector(3 downto 0);
    sel : in std_logic_vector(1 downto 0);
    op  : out std_logic_vector(7 downto 0)
  );
end ALU;

architecture a1 of ALU is


  -- Function to concatenate A and B
  function concat_AB(a, b : std_logic_vector(3 downto 0)) return std_logic_vector is
  begin
    return a & b;
  end function;

  -- Function to perform 4-bit subtraction
  function sub_4bit(a, b : std_logic_vector(3 downto 0)) return std_logic_vector is
    variable result : std_logic_vector(7 downto 0);
	 variable temp,at,bt : std_logic_vector(4 downto 0);
begin
    -- Convert to signed integers, subtract, and convert back to std_logic_vector
	 at := '0' & a;
	 bt := '0' & b;
    temp := std_logic_vector(to_signed(to_integer(signed(at)) - to_integer(signed(bt)), 5));
	 result := temp(4)&temp(4)&temp(4)&temp(4 downto 0);
    return result;
end function;


  -- Function to perform bitwise XOR
  function xor_4bit(a, b : std_logic_vector(3 downto 0)) return std_logic_vector is
    variable result : std_logic_vector(7 downto 0);
  begin
    result(3 downto 0) := a xor b;
    result(7 downto 4) := (others => '0');
    return result;
  end function;

  -- Function to perform right shift
  function shift_right_1(a : std_logic_vector(3 downto 0); b : std_logic_vector(3 downto 0)) return std_logic_vector is
	variable result : std_logic_vector(7 downto 0);
	begin
    case b(3) is
		when '0' => -- left
			case b(1 downto 0) is
					when "00" => 
						result := "0000" & a;
					when "01" => 
						result := "0000" & a(2 downto 0) & '0';
					when "10" => 
						result := "0000" & a(1 downto 0) & "00";
					when others => 
						result := "0000" & a(0) & "000";
			end case;
			
		when others => -- right
			case b(1 downto 0) is
					when "00" => 
						result := "0000" & a;
					when "01" => 
						result := "00000" & a(3 downto 1);
					when "10" => 
						result := "000000" & a(3 downto 2);
					when others => 
						result := "0000000" & a(3);
			end case;
	end case;
    return result;
  end function;

begin
  process(A, B, sel)
    variable oop : std_logic_vector(7 downto 0);
  begin
    case sel is
      when "00" =>
        oop := concat_AB(A, B);

      when "01" =>
        oop := sub_4bit(A, B);

      when "10" =>
        oop := xor_4bit(A, B);

      when others =>
        oop := shift_right_1(A, B);
    end case;
    op <= oop;
  end process;
end a1;