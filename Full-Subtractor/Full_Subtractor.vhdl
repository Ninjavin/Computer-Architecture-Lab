library ieee;
use ieee.STD_LOGIC_1164.all;

entity Full_Subtractor is
    port(
        A : in std_ulogic;
        B : in std_ulogic;
        C : in std_ulogic;
        Diff : out std_ulogic;
        Borrow : out std_ulogic
    );

end Full_Subtractor;

architecture behavioral of Full_Subtractor is
    begin
        process(A, B, C)
        begin
            if(A=B)
            then
                Diff <= C;
                Borrow <= C;
            else
                if(B=C)
                then
                    Diff <= A;
                    Borrow <= B;
                else
                    Diff <= B;
                    Borrow <= B;
                end if;
            end if;
        end process;

end behavioral;