library ieee;
use ieee.std_logic_1164.all;

entity Decoder_3_To_8 is
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
end Decoder_3_To_8;

architecture behavioral of Decoder_3_To_8 is

begin
    D7 <= I2 and I1 and I0;
    D6 <= I2 and I1 and not I0;
    D5 <= I2 and not I1 and I0;
    D4 <= I2 and not I1 and not I0;
    D3 <= not I2 and I1 and I0;
    D2 <= not I2 and I1 and not I0;
    D1 <= not I2 and not I1 and I0;
    D0 <= not I2 and not I1 and not I0;

end behavioral ; -- behavioral