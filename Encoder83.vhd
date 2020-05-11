----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:02:35 05/11/2020 
-- Design Name: 
-- Module Name:    Encoder83 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Encoder83 is
    Port ( A : in  unsigned(7 downto 0);
           B : out  unsigned(2 downto 0));
end Encoder83;

architecture Behavioral of Encoder83 is

begin

	process(A)
	
	variable N : integer range 0 to 7;
	variable Test : unsigned(7 downto 0);
	begin
		Test := "00000001";
		B <= "XXX";
		
		for N in 0 to 7 loop
			if(A = Test) then
				B <= to_unsigned(N, 3);
				exit;
			end if;
		Test := shift_left(Test,1);
		end loop;
		
	end process;


end Behavioral;

