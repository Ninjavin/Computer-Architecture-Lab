----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:38:29 05/11/2020 
-- Design Name: 
-- Module Name:    Parallel_Adder_Structural - Behavioral 
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

entity Parallel_Adder_Structural is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           C : in  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (3 downto 0);
           Carry : out  STD_LOGIC);
end Parallel_Adder_Structural;

architecture Behavioral of Parallel_Adder_Structural is

component Full_Adder is
Port ( FA_1 : in  STD_LOGIC;
           FA_2 : in  STD_LOGIC;
           FA_3 : in  STD_LOGIC;
           FA_Sum : out  STD_LOGIC;
           FA_Carry : out  STD_LOGIC);
end component;

signal m0, m1, m2 : std_logic;

begin

	s0: Full_Adder port map(A(0), B(0), C, Sum(0), m0);
	s1: Full_Adder port map(A(1), B(1), m0, Sum(1), m1);
	s2: Full_Adder port map(A(2), B(2), m1, Sum(2), m2);
	s3: Full_Adder port map(A(3), B(3), m2, Sum(3), Carry);


end Behavioral;

