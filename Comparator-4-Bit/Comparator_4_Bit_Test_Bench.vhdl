library ieee;
use ieee.STD_LOGIC_1164.all;

entity Comparator_4_Bit_Test_Bench is

end Comparator_4_Bit_Test_Bench;

architecture Test_Bench of Comparator_4_Bit_Test_Bench is

    component Comparator_4_Bit
        port(
            A : in std_logic_vector(3 downto 0);
            B : in std_logic_vector(3 downto 0);
            Large : out std_ulogic;
            Equal : out std_ulogic;
            Small : out std_ulogic
        );
      end component;

    signal A, B : STD_LOGIC_VECTOR(3 downto 0);
    signal Large, Equal, Small : std_ulogic;

begin

    comparator4Bit : Comparator_4_Bit port map ( A => A, B => B, Large => Large, Small => Small, Equal => Equal );

    process begin

        A <= "1000" ; B<="0100" ; wait for 1 ns;
        A <= "1000" ; B<="1000" ; wait for 1 ns;
        A <= "0010" ; B<="0001" ; wait for 1 ns;

        assert false report "Reached the end of test";
            wait;

    end process;

end Test_Bench ; -- Test_Bench