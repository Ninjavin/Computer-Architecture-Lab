----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:01:09 05/11/2020 
-- Design Name: 
-- Module Name:    AND_Gate - Behavioral 
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

entity AND_Gate is
    Port ( And_A : in  STD_LOGIC;
           And_B : in  STD_LOGIC;
           And_O : out  STD_LOGIC);
end AND_Gate;

architecture Behavioral of AND_Gate is

begin
	
	And_O <= And_A and And_B;

end Behavioral;

