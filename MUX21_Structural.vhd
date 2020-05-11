----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:00:27 05/11/2020 
-- Design Name: 
-- Module Name:    MUX21_Structural - Behavioral 
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

entity MUX21_Structural is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end MUX21_Structural;

architecture Behavioral of MUX21_Structural is

component AND_Gate is
    Port ( And_A : in  STD_LOGIC;
           And_B : in  STD_LOGIC;
           And_O : out  STD_LOGIC);
end component;

component OR_Gate is
    Port ( OR_A : in  STD_LOGIC;
           OR_B : in  STD_LOGIC;
           OR_O : out  STD_LOGIC);
end component;

component NOT_Gate is
    Port ( NOT_A : in  STD_LOGIC;
           Not_O : out  STD_LOGIC);
end component;

signal m0, m1, m2: std_logic;

begin
	
	s0 : NOT_Gate port map(S, m0);
	s1 : AND_Gate port map(A, S, m1);
	s2 : AND_Gate port map(B, S, m2);
	s3 : OR_Gate port map(m1, m2, Y);


end Behavioral;

