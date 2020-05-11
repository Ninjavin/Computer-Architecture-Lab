----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:42:46 05/11/2020 
-- Design Name: 
-- Module Name:    MUX21_DataFlow - Behavioral 
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

entity MUX21_DataFlow is
    Port ( Input0 : in  STD_LOGIC;
           Input1 : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Output : out  STD_LOGIC);
end MUX21_DataFlow;

architecture Behavioral of MUX21_DataFlow is

begin

	process(Input0, Input1, S)
	begin
		Output <= ((not S) and Input0) or (S and Input1);
	end process;
	


end Behavioral;

