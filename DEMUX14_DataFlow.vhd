----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:58:24 05/11/2020 
-- Design Name: 
-- Module Name:    DEMUX14_DataFlow - Behavioral 
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

entity DEMUX14_DataFlow is
    Port ( A : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           Output : out  STD_LOGIC_VECTOR (3 downto 0));
end DEMUX14_DataFlow;

architecture Behavioral of DEMUX14_DataFlow is

begin

	Output(0) <= (not S(0)) and (not S(1));
	Output(1) <= S(0) and (not S(1));
	Output(2) <= (not S(0)) and S(1);
	Output(3) <= S(0) and S(1);


end Behavioral;

