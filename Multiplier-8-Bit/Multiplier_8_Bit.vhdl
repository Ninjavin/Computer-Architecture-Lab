library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Multiplier_8_Bit is
  port(
    A : in std_logic_vector(3 downto 0);
    B : in std_logic_vector(3 downto 0);
    Mul : out std_logic_vector(7 downto 0)
  );
end Multiplier_8_Bit;

architecture Behavioral of Multiplier_8_Bit is

begin

    process
    variable temp : std_logic_vector(7 downto 0) := "00000000";
    begin
        for i in 1 to conv_integer(B)
        loop
            temp := temp and (X"0" & A);
        end loop;
        Mul <= temp;
    end process;

end Behavioral ;