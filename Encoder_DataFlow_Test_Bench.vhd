--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:47:19 05/11/2020
-- Design Name:   
-- Module Name:   C:/Users/vinja/Desktop/git-project/Notifications/Encoder_DataFlow/Encoder_DataFlow_Test_Bench.vhd
-- Project Name:  Encoder_DataFlow
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Encoder_DataFlow
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
 
ENTITY Encoder_DataFlow_Test_Bench IS
END Encoder_DataFlow_Test_Bench;
 
ARCHITECTURE behavior OF Encoder_DataFlow_Test_Bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Encoder_DataFlow
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : IN  std_logic;
         D : IN  std_logic;
         Output_1 : OUT  std_logic;
         Output_0 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C : std_logic := '0';
   signal D : std_logic := '0';

 	--Outputs
   signal Output_1 : std_logic;
   signal Output_0 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Encoder_DataFlow PORT MAP (
          A => A,
          B => B,
          C => C,
          D => D,
          Output_1 => Output_1,
          Output_0 => Output_0
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
     A <= '0'; B<='0' ; C<='0'; D<='1' ; wait for 100 ns;	
	  A <= '0'; B<='0' ; C<='1'; D<='0' ; wait for 100 ns;	
	  A <= '0'; B<='1' ; C<='0'; D<='0' ; wait for 100 ns;	
	  A <= '1'; B<='0' ; C<='0'; D<='0' ; wait for 100 ns;	

      

      -- insert stimulus here 

      wait;
   end process;

END;
