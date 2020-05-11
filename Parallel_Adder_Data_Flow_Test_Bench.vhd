--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:21:58 05/12/2020
-- Design Name:   
-- Module Name:   C:/Users/vinja/Desktop/git-project/Notifications/Parallel_Adder_Data_Flow/Parallel_Adder_Data_Flow_Test_Bench.vhd
-- Project Name:  Parallel_Adder_Data_Flow
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Parallel_Adder_Data_Flow
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Parallel_Adder_Data_Flow_Test_Bench IS
END Parallel_Adder_Data_Flow_Test_Bench;
 
ARCHITECTURE behavior OF Parallel_Adder_Data_Flow_Test_Bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Parallel_Adder_Data_Flow
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         C : IN  std_logic;
         Sum : OUT  std_logic_vector(3 downto 0);
         Carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal C : std_logic := '0';
   signal Carry : std_logic := '0';

 	--Outputs
   signal Sum : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Parallel_Adder_Data_Flow PORT MAP (
          A => A,
          B => B,
          C => C,
          Sum => Sum,
          Carry => Carry
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      A<="0010" ; B<="0101" ; wait for 100 ns;	
		


      -- insert stimulus here 

      wait;
   end process;

END;
