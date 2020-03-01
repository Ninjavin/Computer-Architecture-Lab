library ieee;
use ieee.STD_LOGIC_1164.all;

entity Half_Adder is
    port(
        A : in std_ulogic;
        B : in std_ulogic;
        C : out std_ulogic;
        C_Out : out std_ulogic
    );
    
end Half_Adder;

architecture behavioral of Half_Adder is

    begin
        
        C <= A xor B;
        C_Out <= A and B;


end behavioral;