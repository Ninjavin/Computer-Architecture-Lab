----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:33:12 05/11/2020 
-- Design Name: 
-- Module Name:    SR_Flip_Flop - Behavioral 
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

entity SR_Flip_Flop is
    Port ( CLK : in  STD_LOGIC;
           S : in  STD_LOGIC;
           R : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qn : out  STD_LOGIC);
end SR_Flip_Flop;

architecture Behavioral of SR_Flip_Flop is

signal m: std_logic := '0';

begin
	process(CLK, S, R)
	begin
		if rising_edge(CLK) then
			if S='0' and R='0' then
				m <= m;
			elsif S='0' and R='1' then
				m <= '0';
			elsif S='1' and R='0' then
				m <= '1';
			else
				m <= 'X';
			end if;
		end if;
	end process;
	Q <= m;
	Qn <= not m;


end Behavioral;

