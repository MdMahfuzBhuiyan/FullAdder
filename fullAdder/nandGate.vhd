library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NANDGate is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Y : out STD_LOGIC);
end NANDGate;

architecture Behavioral of NANDGate is
begin
    Y <= not (A and B);
end Behavioral;