library ieee;
use ieee.STD_LOGIC_1164.all;

entity Parallel_4_Bit_Adder_Test_Bench is

end Parallel_4_Bit_Adder_Test_Bench;

architecture Test_Bench of Parallel_4_Bit_Adder_Test_Bench is

    component Parallel_4_Bit_Adder
        port(
          A : in STD_LOGIC_VECTOR(3 downto 0);
          B : in STD_LOGIC_VECTOR(3 downto 0);
          C : in std_ulogic;
          Sum : out STD_LOGIC_VECTOR(3 downto 0);
          Carry : out std_ulogic
        );
      end component;

    signal A, B, Sum : STD_LOGIC_VECTOR(3 downto 0);
    signal C, Carry : std_ulogic;

begin

    parallel4BitAdder : Parallel_4_Bit_Adder port map ( A => A, B => B, C => C, Sum => Sum, Carry => Carry );

    process begin

        A <= "0011" ; B <= "0000" ; C <= '0' ; wait for 1 ns;
        A <= "0001" ; B <= "0100" ; C <= '0' ; wait for 1 ns;
        A <= "0010" ; B <= "0010" ; C <= '0' ; wait for 1 ns;

        assert false report "Reached the end of test";
            wait;

    end process;

end Test_Bench ; -- Test_Bench