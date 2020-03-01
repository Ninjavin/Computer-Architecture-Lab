library ieee;
use ieee.std_logic_1164.all;

entity Comparator_4_Bit is
  port(
    A : in std_logic_vector(3 downto 0);
    B : in std_logic_vector(3 downto 0);
    Large : out std_ulogic;
    Equal : out std_ulogic;
    Small : out std_ulogic
  );
end Comparator_4_Bit;

architecture behavioral of Comparator_4_Bit is

begin
    process(A, B)
    begin
        if(A=B)
        then
            Large <= '0' ; Equal <= '1' ; Small <= '0';
        elsif(A < B)
        then
            Large <= '0' ; Equal <= '0' ; Small <= '1';
        else
            Large <= '1' ; Equal <= '0' ; Small <= '0';
        end if;
    end process;

end behavioral ; -- behavioral