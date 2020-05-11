----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:39:46 05/11/2020 
-- Design Name: 
-- Module Name:    JK_Flip_Flop - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity JK_Flip_Flop is
    Port ( CLK : in  STD_LOGIC;
           J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qn : out  STD_LOGIC);
end JK_Flip_Flop;

architecture Behavioral of JK_Flip_Flop is
	
	signal m1 : std_logic:='0';
	
begin

	process(CLK, J, K)
	begin
		if rising_edge(CLK) then
			if(J='0' and K='0') then
				m1 <= m1;
			elsif(J='0' and K='1') then
				m1 <= '0';
			elsif(J='1' and K='0') then
				m1 <= '1';
			else
				m1 <= not m1;
			end if;
		end if;
	end process;
	Q <= m1;
	Qn <= not m1;


end Behavioral;

