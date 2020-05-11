----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:20:16 05/11/2020 
-- Design Name: 
-- Module Name:    MUX41_Case - Behavioral 
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

entity MUX41_Case is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           Output : out  STD_LOGIC);
end MUX41_Case;

architecture Behavioral of MUX41_Case is

begin
	process(A, S)
	begin
		case S is
			when "00" => Output<=A(0);
			when "01" => Output<=A(1);
			when "10" => Output<=A(2);
			when "11" => Output<=A(3);
			when others => Output<='X';
		end case;
	end process;
end Behavioral;

