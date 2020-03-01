library ieee;
use ieee.STD_LOGIC_1164.all;

entity Decoder_3_To_8_Test_Bench is

end Decoder_3_To_8_Test_Bench;

architecture Test_Bench of Decoder_3_To_8_Test_Bench is

    component Decoder_3_To_8
        port(
            I2 : in std_ulogic;
            I1 : in std_ulogic;
            I0 : in std_ulogic;
            D7 : out std_ulogic;
            D6 : out std_ulogic;
            D5 : out std_ulogic;
            D4 : out std_ulogic;
            D3 : out std_ulogic;
            D2 : out std_ulogic;
            D1 : out std_ulogic;
            D0 : out std_ulogic
        );
      end component;

    signal I2, I1, I0, D7, D6, D5, D4, D3, D2, D1, D0 : std_ulogic;

begin

    Decoder3To8 : Decoder_3_To_8 port map ( I2 => I2, I1 => I1, I0 => I0, D7 => D7, D6 => D6, D5 => D5, D4 => D4, D3 => D3, D2 => D2, D1 => D1, D0 => D0 );

    process begin

        I2 <= '0' ; I1 <= '0' ; I0 <= '0' ; wait for 1 ns;
        I2 <= '0' ; I1 <= '0' ; I0 <= '1' ; wait for 1 ns;
        I2 <= '0' ; I1 <= '1' ; I0 <= '0' ; wait for 1 ns;
        I2 <= '0' ; I1 <= '1' ; I0 <= '1' ; wait for 1 ns;
        I2 <= '1' ; I1 <= '0' ; I0 <= '0' ; wait for 1 ns;
        I2 <= '1' ; I1 <= '0' ; I0 <= '1' ; wait for 1 ns;
        I2 <= '1' ; I1 <= '1' ; I0 <= '0' ; wait for 1 ns;
        I2 <= '1' ; I1 <= '1' ; I0 <= '1' ; wait for 1 ns;

        assert false report "Reached the end of test";
            wait;

    end process;

end Test_Bench ; -- Test_Bench