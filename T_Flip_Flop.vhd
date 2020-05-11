----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:55:32 05/11/2020 
-- Design Name: 
-- Module Name:    T_Flip_Flop - Behavioral 
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

entity T_Flip_Flop is
    Port ( CLK : in  STD_LOGIC;
           T : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qn : out  STD_LOGIC);
end T_Flip_Flop;

architecture Behavioral of T_Flip_Flop is
	
	signal v:std_logic:='0';

begin

	process(CLK, T)
	begin
		if rising_edge(CLK) then
			if(T='0') then
				v <= '1';
			elsif(T='1') then
				v <= '0';
			end if;
		end if;
		
	end process;
	Q <= v;
	Qn <= not v;


end Behavioral;

