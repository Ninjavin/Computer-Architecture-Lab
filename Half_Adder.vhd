----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:23:02 05/11/2020 
-- Design Name: 
-- Module Name:    Half_Adder - Behavioral 
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

entity Half_Adder is
    Port ( HA1 : in  STD_LOGIC;
           HA2 : in  STD_LOGIC;
           S : out  STD_LOGIC;
           C : out  STD_LOGIC);
end Half_Adder;

architecture Behavioral of Half_Adder is

begin

	S <= HA1 xor HA2;
	C <= HA1 and HA2;

end Behavioral;

