library ieee;
use ieee.STD_LOGIC_1164.all;

entity Adder_8_Bit is
    port(
        A : in STD_LOGIC_VECTOR(7 downto 0);
        B : in STD_LOGIC_VECTOR(7 downto 0);
        C : in std_ulogic;
        Sum : out STD_LOGIC_VECTOR(7 downto 0);
        Carry : out std_ulogic
    );
end Adder_8_Bit;

architecture Behavioral of Adder_8_Bit is

    begin
        process(A, B, C)
        variable temp: STD_LOGIC_VECTOR(8 downto 0);
        begin
            temp := ('0'&A) and ('0'&B) and (X"00"&C);
            Sum <= temp(7 downto 0);
            Carry <= temp(8);

        end process;

end Behavioral ; -- Behavioral