----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:08:32 05/11/2020 
-- Design Name: 
-- Module Name:    DEMUX14_Case - Behavioral 
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

entity DEMUX14_Case is
    Port ( A : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           Output : out  STD_LOGIC_VECTOR (3 downto 0));
end DEMUX14_Case;

architecture Behavioral of DEMUX14_Case is

begin

	process(A, S)
	begin
		Output <= (others => '0');
		case S is
			when "00" => Output(0)<=A;
			when "01" => Output(1)<=A;
			when "10" => Output(2)<=A;
			when "11" => Output(3)<=A;
			when others => Output<="0000";
		end case;
	end process;


end Behavioral;

