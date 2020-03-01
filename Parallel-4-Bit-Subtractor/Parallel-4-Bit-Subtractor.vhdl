library ieee;
use ieee.std_logic_1164.all;

entity Parallel_4_Bit_Subtractor is
  port(
    A : in std_logic_vector(3 downto 0);
    B : in std_logic_vector(3 downto 0);
    C : in std_ulogic;
    Diff : out std_logic_vector(3 downto 0);
    Borrow : out std_ulogic
  );
end Parallel_4_Bit_Subtractor;

architecture behavioral of Parallel_4_Bit_Subtractor is

begin
    process
    variable temp : std_logic_vector(4 downto 0);
    begin
        temp(0) := C;
        for i in 0 to 3 loop
            Diff(i) <= A(i) xor B(i) xor temp(i);
            temp(i+1) := (not A(i) and B(i)) or (B(i) and temp(i)) or (not A(i) and temp(i));
        end loop;
        Borrow <= temp(4);
    end process;

end behavioral;