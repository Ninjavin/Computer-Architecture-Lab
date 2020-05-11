----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:50:22 05/11/2020 
-- Design Name: 
-- Module Name:    D_Flip_Flop - Behavioral 
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

entity D_Flip_Flop is
    Port ( CLK : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qn : out  STD_LOGIC);
end D_Flip_Flop;

architecture Behavioral of D_Flip_Flop is
	
	signal temp:std_logic := '0';

begin

	process(CLK, D)
	begin
		if rising_edge(CLK) then
			if(D='0') then
				temp <= '0';
			elsif(D='1') then
				temp <= '1';
			end if;
		end if;
	end process;
	Q <= temp;
	Qn <= not temp;


end Behavioral;

