library ieee;
use ieee.STD_LOGIC_1164.all;

entity Full_Subtractor_Test_Bench is

end Full_Subtractor_Test_Bench;

architecture Test_Bench of Full_Subtractor_Test_Bench is
    
    component Full_Subtractor
        port(
            A : in std_ulogic;
            B : in std_ulogic;
            C : in std_ulogic;
            Diff : out std_ulogic;
            Borrow : out std_ulogic
        );
    end component;

    signal A, B, C, Diff, Borrow : std_ulogic;

begin

    fullSubtractor : Full_Subtractor port map (A => A, B => B, C => C, Diff => Diff, Borrow => Borrow);

    process begin

        A <= '0' ; B <= '0' ; C <= '0' ; wait for 1 ns;
        A <= '0' ; B <= '0' ; C <= '1' ; wait for 1 ns;
        A <= '0' ; B <= '1' ; C <= '0' ; wait for 1 ns;
        A <= '0' ; B <= '1' ; C <= '1' ; wait for 1 ns;
        A <= '1' ; B <= '0' ; C <= '0' ; wait for 1 ns;
        A <= '1' ; B <= '0' ; C <= '1' ; wait for 1 ns;
        A <= '1' ; B <= '1' ; C <= '0' ; wait for 1 ns;
        A <= '1' ; B <= '1' ; C <= '1' ; wait for 1 ns;

        assert false report "Done";
        wait;

    end process;

end Test_Bench ; -- test_bench
