library ieee;
use ieee.STD_LOGIC_1164.all;

entity Gray_To_Binary_Test_Bench is

end Gray_To_Binary_Test_Bench;

architecture Test_Bench of Gray_To_Binary_Test_Bench is

    component Gray_To_Binary
        port(
            Gray : in std_logic_vector(3 downto 0);
            Binary : inout std_logic_vector(3 downto 0)
        );
      end component;

    signal Gray, Binary : STD_LOGIC_VECTOR(3 downto 0);

begin

    grayToBinary : Gray_To_Binary port map ( Gray => Gray, Binary => Binary );

    process begin

        Gray <= "0011" ; wait for 1 ns;
        Gray <= "1100" ; wait for 1 ns;
        Gray <= "1001" ; wait for 1 ns;

        assert false report "Reached the end of test";
            wait;

    end process;

end Test_Bench ; -- Test_Bench