----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:23:02 05/11/2020 
-- Design Name: 
-- Module Name:    MUX21 - Behavioral 
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

entity MUX21 is
    Port ( Input_1 : in  STD_LOGIC;
           Input_2 : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Output : out  STD_LOGIC);
end MUX21;

architecture Behavioral of MUX21 is

begin
	process(Input_1, Input_2, S)
	begin
		Output <= ((not S) and Input_1) or (S and Input_2);
		
	end process;


end Behavioral;

