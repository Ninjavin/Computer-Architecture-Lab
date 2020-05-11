----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:52:48 05/11/2020 
-- Design Name: 
-- Module Name:    Encoder_Case - Behavioral 
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

entity Encoder_Case is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : out  STD_LOGIC_VECTOR (1 downto 0));
end Encoder_Case;

architecture Behavioral of Encoder_Case is

begin

	process(A)
	begin
		case A is
			when "1000" => B <= "11";
			when "0100" => B <= "10";
			when "0010" => B <= "01";
			when "0001" => B <= "00";
			when others => B <= "ZZ";
		end case;
	end process;


end Behavioral;

