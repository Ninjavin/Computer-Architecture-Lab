----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:39:21 05/11/2020 
-- Design Name: 
-- Module Name:    Full_Adder - Behavioral 
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

entity Full_Adder is
    Port ( FA_1 : in  STD_LOGIC;
           FA_2 : in  STD_LOGIC;
           FA_3 : in  STD_LOGIC;
           FA_Sum : out  STD_LOGIC;
           FA_Carry : out  STD_LOGIC);
end Full_Adder;

architecture Behavioral of Full_Adder is

begin

	FA_Sum <= FA_1 xor FA_2 xor FA_3;
	FA_Carry <= (FA_1 and FA_2) or ((FA_1 xor FA_2) and FA_3);

end Behavioral;

