--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:33:37 05/11/2020
-- Design Name:   
-- Module Name:   C:/Users/vinja/Desktop/git-project/Notifications/Full_Adder_Using_Half_Adder/Full_Adder_Using_Half_Adder_Test_Bench.vhd
-- Project Name:  Full_Adder_Using_Half_Adder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Full_Adder_Using_Half_Adder
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
 
ENTITY Full_Adder_Using_Half_Adder_Test_Bench IS
END Full_Adder_Using_Half_Adder_Test_Bench;
 
ARCHITECTURE behavior OF Full_Adder_Using_Half_Adder_Test_Bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Full_Adder_Using_Half_Adder
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : IN  std_logic;
         Sum : OUT  std_logic;
         Carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C : std_logic := '0';

 	--Outputs
   signal Sum : std_logic;
   signal Carry : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Full_Adder_Using_Half_Adder PORT MAP (
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
      A<='0' ; B<='0' ; C<='0' ; wait for 100 ns;	
		A<='0' ; B<='0' ; C<='1' ; wait for 100 ns;	
		A<='0' ; B<='1' ; C<='0' ; wait for 100 ns;	
		A<='0' ; B<='1' ; C<='1' ; wait for 100 ns;	
		A<='1' ; B<='0' ; C<='0' ; wait for 100 ns;	
		A<='1' ; B<='0' ; C<='1' ; wait for 100 ns;	
		A<='1' ; B<='1' ; C<='0' ; wait for 100 ns;	
		A<='1' ; B<='1' ; C<='1' ; wait for 100 ns;	

      

      -- insert stimulus here 

      wait;
   end process;

END;
