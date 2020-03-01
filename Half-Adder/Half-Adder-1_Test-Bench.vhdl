library ieee;
use ieee.STD_LOGIC_1164.all;

entity Half_Adder_Test_Bench is

end Half_Adder_Test_Bench;

architecture Test_Bench of Half_Adder_Test_Bench is
    component Half_Adder
        port(
            A : in std_ulogic;
            B : in std_ulogic;
            C : out std_ulogic;
            C_Out : out std_ulogic
        );
    end component;

    signal A, B, C, C_Out : std_ulogic;

    begin

        halfAdder : Half_Adder port map (A => A, B => B, C => C, C_Out => C_Out);

        process begin
            
            A <= 'X';   B <= 'X';   wait for 1 ns;
            A <= '0';   B <= '0';   wait for 1 ns;
            A <= '0';   B <= '1';   wait for 1 ns;
            A <= '1';   B <= '0';   wait for 1 ns;
            A <= '1';   B <= '1';   wait for 1 ns;

            assert false report "Reached the end of test";
            wait;

        end process;

end Test_Bench;