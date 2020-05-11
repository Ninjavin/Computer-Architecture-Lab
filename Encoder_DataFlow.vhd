----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:46:58 05/11/2020 
-- Design Name: 
-- Module Name:    Encoder_DataFlow - Behavioral 
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

entity Encoder_DataFlow is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Output_1 : out  STD_LOGIC;
           Output_0 : out  STD_LOGIC);
end Encoder_DataFlow;

architecture Behavioral of Encoder_DataFlow is

begin

Output_0 <= ((not C) and (not D)) and (A xor B);
Output_1 <= ((not B) and (not D)) and (A xor C);

end Behavioral;

