library ieee;
use ieee.STD_LOGIC_1164.all;

entity Gray_To_Binary is
    port(
        Gray : in std_logic_vector(3 downto 0);
        Binary : inout std_logic_vector(3 downto 0)
    );
end Gray_To_Binary;

architecture behavioral of Gray_To_Binary is
begin
    process(Gray, Binary)
    begin
        Binary(3) <= Gray(3);
        for i in 2 downto 0 loop
            if(Gray(i) = Binary(i+1))
            then
                Binary(i) <= '0';
            else
                Binary(i) <= '1';
            end if;
        end loop;
    end process;

end behavioral ; -- behavioral