----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:17:55 05/11/2020 
-- Design Name: 
-- Module Name:    Full_Adder_Using_Half_Adder - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Full_Adder_Using_Half_Adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Carry : out  STD_LOGIC);
end Full_Adder_Using_Half_Adder;

architecture Behavioral of Full_Adder_Using_Half_Adder is

	component Half_Adder is
		Port ( HA1 : in  STD_LOGIC;
           HA2 : in  STD_LOGIC;
           S : out  STD_LOGIC;
           C : out  STD_LOGIC);
	end component;
	
	component OR_Gate is
		Port ( OR_1 : in  STD_LOGIC;
           OR_2 : in  STD_LOGIC;
           OR_Out : out  STD_LOGIC);
	end component;
	
	signal m1, m2, m3: std_logic;
		

begin

	u1: Half_Adder Port Map(HA1 => A, HA2 => B, S=>m1, C=>m2);
	u2: Half_Adder Port Map(HA1 => m1, HA2 => C, S=>Sum, C=>m3);
	u3: OR_Gate Port Map(OR_1 => m3, OR_2 => m2, OR_Out => Carry);


end Behavioral;

