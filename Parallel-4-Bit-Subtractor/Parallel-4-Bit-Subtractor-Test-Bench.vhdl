library ieee;
use ieee.STD_LOGIC_1164.all;

entity Parallel_4_Bit_Subtractor_Test_Bench is

end Parallel_4_Bit_Subtractor_Test_Bench;

architecture Test_Bench of Parallel_4_Bit_Subtractor_Test_Bench is

    component Parallel_4_Bit_Subtractor
        port(
          A : in STD_LOGIC_VECTOR(3 downto 0);
          B : in STD_LOGIC_VECTOR(3 downto 0);
          C : in std_ulogic;
          Diff : out std_logic_vector(3 downto 0);
          Borrow : out std_ulogic
        );
      end component;

    signal A, B, Diff : STD_LOGIC_VECTOR(3 downto 0);
    signal C, Borrow : std_ulogic;

begin

    parallel4BitSubtractor : Parallel_4_Bit_Subtractor port map ( A => A, B => B, C => C, Diff => Diff, Borrow => Borrow );

    process begin

        A <= "0101" ; B <= "0010" ; C <= '1' ; wait for 1 ns;
        A <= "1000" ; B <= "0100" ; C <= '1' ; wait for 1 ns;
        A <= "0010" ; B <= "0010" ; C <= '1' ; wait for 1 ns;

        assert false report "Reached the end of test";
            wait;

    end process;

end Test_Bench ; -- Test_Bench