----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:21:56 05/11/2020 
-- Design Name: 
-- Module Name:    MUX41_Using_MUX21 - Behavioral 
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

entity MUX41_Using_MUX21 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC);
end MUX41_Using_MUX21;

architecture Behavioral of MUX41_Using_MUX21 is

component MUX21 is
    Port ( Input_1 : in  STD_LOGIC;
           Input_2 : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Output : out  STD_LOGIC);
end component;

signal m0, m1: std_logic;

begin

	s0 : MUX21 port map(A(0), A(1), S(0), m0);
	s1 : MUX21 port map(A(2), A(3), S(0), m1);
	s2 : MUX21 port map(m0, m1, S(1), Y);

end Behavioral;

