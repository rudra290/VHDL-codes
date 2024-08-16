library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU_N is
  port (
    A   : in std_logic_vector(3 downto 0);
    B   : in std_logic_vector(3 downto 0);
    op  : out std_logic_vector(5 downto 0)
  );
end ALU_N;

architecture a1 of ALU_N is


  -- Function to find max between A and B
  function max_1(a, b : std_logic_vector(3 downto 0)) return std_logic_vector is
  variable result : std_logic_vector(5 downto 0);

  begin
			if( a > b ) then
				result := "00" & a;
			elsif( b > a ) then
				result := "00" & b;
			else
				result := "000000";
			end if;
    return result;
	 
  end function;

  -- Function to perform and operation
  function and_1(a, b : std_logic_vector(3 downto 0)) return std_logic_vector is
  variable result : std_logic_vector(5 downto 0);
begin
	 for i in 0 to 3 loop
	 result(i) := a(i) and b(i);
	 end loop;
	 
	 result(5 downto 4) := (others => '0');
	
    return result; 
end function;


  -- Function to perform rotetion
  function rote_1(a, b : std_logic_vector(3 downto 0)) return std_logic_vector is
  variable result : std_logic_vector(5 downto 0);
  variable temp : std_logic_vector(3 downto 0);
  begin
  temp := a;
  if b(3) = '0' then
		for i in 0 to 3 loop
		if ( i >= to_integer(unsigned(b(1 downto 0)))) then
		exit;
		else
			temp := temp(2 downto 0) & temp(3);
		end if;
		end loop;
	else 
		for i in 0 to 3 loop
		if ( i >= to_integer(unsigned(b(1 downto 0)))) then
		exit;
		else
			temp := temp(0) & temp(3 downto 1);
		end if;
		end loop;
	end if;
	result := "00" & temp;
	
    return result;
  end function;

  -- Function to check equality
  function eq_1(a : std_logic_vector(3 downto 0); b : std_logic_vector(3 downto 0)) return std_logic_vector is
	variable result : std_logic_vector(5 downto 0);
	begin
		if ( a = b) then
			result := "00" & a(3 downto 0);
		else
			result := "000000";
		end if;
    return result;
  end function;

begin
  process(A, B)
    variable oop : std_logic_vector(5 downto 0);
	 variable sel : std_logic_vector(1 downto 0);
  begin
		sel := B(3)&A(3);
    case sel is
      when "00" =>
        oop := max_1(A, B);

      when "01" =>
        oop := and_1(A, B);

      when "10" =>
        oop := rote_1(A, B);

      when others =>
        oop := eq_1(A, B);
    end case;
    op <= oop;
  end process;
end a1;