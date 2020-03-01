library ieee;
use ieee.std_logic_1164.all;

entity Binary_To_Gray is
  port(
    Binary : in std_logic_vector(3 downto 0);
    Gray : out std_logic_vector(3 downto 0)
  );
end Binary_To_Gray;

architecture behavioral of Binary_To_Gray is

begin

    process(Binary)
    begin
        Gray(3) <= Binary(3);
        for i in 2 downto 0 loop
            if(Binary(i) = Binary(i+1))
            then
                Gray(i) <= '0';
            else
                Gray(i) <= '1';
            end if;
        end loop;
    end process;
end behavioral ;