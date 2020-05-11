----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:36:12 05/11/2020 
-- Design Name: 
-- Module Name:    Decoder_Case - Behavioral 
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

entity Decoder_Case is
    Port ( A : in  STD_LOGIC_VECTOR (1 downto 0);
           B : out  STD_LOGIC_VECTOR (3 downto 0));
end Decoder_Case;

architecture Behavioral of Decoder_Case is

begin
	
	process(A)
	begin
		case A is
			when "00" => B <= "0001";
			when "01" => B <= "0010";
			when "10" => B <= "0100";
			when "11" => B <= "1000";
			when others => B <= "1111";
		end case;
	end process;

end Behavioral;

