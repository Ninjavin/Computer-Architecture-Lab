----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:06:44 05/11/2020 
-- Design Name: 
-- Module Name:    MUX41_If-Else - Behavioral 
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

entity MUX41_If_Else is
    Port ( Input : in  STD_LOGIC_VECTOR (3 downto 0);
           Selec : in  STD_LOGIC_VECTOR (1 downto 0);
           Output : out  STD_LOGIC);
end MUX41_If_Else;

architecture Behavioral of MUX41_If_Else is

begin
	
	process(Selec, Input)
	begin
		if(Selec(1 downto 0) = "00") then Output <= Input(0);
		elsif(Selec(1 downto 0) = "01") then Output <= Input(1);
		elsif(Selec(1 downto 0) = "10") then Output <= Input(2);
		elsif(Selec(1 downto 0) = "11") then Output <= Input(3);
		end if;
	end process;


end Behavioral;

