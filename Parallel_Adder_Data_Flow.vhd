----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:18:14 05/12/2020 
-- Design Name: 
-- Module Name:    Parallel_Adder_Data_Flow - Behavioral 
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

entity Parallel_Adder_Data_Flow is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           C : in  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (3 downto 0);
           Carry : out  STD_LOGIC);
end Parallel_Adder_Data_Flow;

architecture Behavioral of Parallel_Adder_Data_Flow is

begin

	process(A, B, C)
	variable u: std_logic_vector(4 downto 0);
	begin
		u(0):= C;
		for i in 0 to 3 loop
			Sum(i) <= A(i) xor B(i) xor u(i);
			u(i+1) := (A(i) and B(i)) or (B(i) and u(i)) or (u(i) and A(i));
		end loop;
	Carry <= u(4);
	end process;

end Behavioral;

