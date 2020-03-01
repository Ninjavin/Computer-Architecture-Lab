library ieee;
use ieee.STD_LOGIC_1164.all;

entity Adder_8_Bit_Test_Bench is

end Adder_8_Bit_Test_Bench;

architecture Test_Bench of Adder_8_Bit_Test_Bench is
    component Adder_8_Bit
        port(
            A : in STD_LOGIC_VECTOR(7 downto 0);
            B : in STD_LOGIC_VECTOR(7 downto 0);
            C : in std_ulogic;
            Sum : out STD_LOGIC_VECTOR(7 downto 0);
            Carry : out std_ulogic
        );
    end component;
    signal C, Carry : std_ulogic;
    signal A, B, Sum : STD_LOGIC_VECTOR(7 downto 0);

begin

    adder8Bit : Adder_8_Bit port map(A => A, B => B, C => C, Sum => Sum, Carry => Carry );

    process begin

        A <= "00001111" ; B <= "00000000" ; C <= '0' ; wait for 1 ns;
        A <= "00000001" ; B <= "00000100" ; C <= '0' ; wait for 1 ns;
        A <= "00100000" ; B <= "00000010" ; C <= '0' ; wait for 1 ns;

        assert false report "Reached the end of test";
            wait;

    end process;


end Test_Bench ; -- Test_Bench