----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:54:05 05/11/2020 
-- Design Name: 
-- Module Name:    MUX41_DataFlow - Behavioral 
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

entity MUX41_DataFlow is
    Port ( Input_0 : in  STD_LOGIC;
           Input_1 : in  STD_LOGIC;
           Input_2 : in  STD_LOGIC;
           Input_3 : in  STD_LOGIC;
           Select_0 : in  STD_LOGIC;
           Select_1 : in  STD_LOGIC;
           Output : out  STD_LOGIC);
end MUX41_DataFlow;

architecture Behavioral of MUX41_DataFlow is

begin
	Output <= ((Input_0 and (not Select_0) and (not Select_1)) or (Input_1 and Select_1 and (not Select_0)) or (Input_2 and (not Select_1) and Select_0) or (Input_3 and Select_1 and Select_0));

end Behavioral;

