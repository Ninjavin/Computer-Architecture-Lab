library ieee;
use ieee.STD_LOGIC_1164.all;

entity Binary_To_Gray_Test_Bench is

end Binary_To_Gray_Test_Bench;

architecture Test_Bench of Binary_To_Gray_Test_Bench is

    component Binary_To_Gray
        port(
            Binary : in std_logic_vector(3 downto 0);
            Gray : out std_logic_vector(3 downto 0)
        );
      end component;

    signal Gray, Binary : STD_LOGIC_VECTOR(3 downto 0);

begin

    binaryToGray : Binary_To_Gray port map ( Gray => Gray, Binary => Binary );

    process begin

        Binary <= "0011" ; wait for 1 ns;
        Binary <= "1100" ; wait for 1 ns;
        Binary <= "1001" ; wait for 1 ns;

        assert false report "Reached the end of test";
            wait;

    end process;

end Test_Bench ; -- Test_Bench