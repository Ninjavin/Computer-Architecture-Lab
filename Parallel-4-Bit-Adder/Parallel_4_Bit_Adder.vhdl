library ieee;
use ieee.STD_LOGIC_1164.all;

entity Parallel_4_Bit_Adder is
  port(
    A : in STD_LOGIC_VECTOR(3 downto 0);
    B : in STD_LOGIC_VECTOR(3 downto 0);
    C : in std_ulogic;
    Sum : out STD_LOGIC_VECTOR(3 downto 0);
    Carry : out std_ulogic
  );
end Parallel_4_Bit_Adder;

architecture behavioral of Parallel_4_Bit_Adder is
begin
    process(A,B,C)
    variable temp: STD_LOGIC_VECTOR(4 downto 0);
    begin
        temp(0) := C;
        for i in 0 to 3 loop
            Sum(i) <= A(i) xor B(i) xor temp(i);
            temp(i+1) := ((A(i) and B(i)) or (B(i) and temp(i)) or (temp(i) and A(i)));
        end loop;
        Carry <= temp(4);
    end process;


end behavioral ; -- behavioral