library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HalfAdder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S : out STD_LOGIC;
           C : out STD_LOGIC);
end HalfAdder;

architecture Structural of HalfAdder is

    component ANDGate is
        Port ( A : in  STD_LOGIC;
               B : in  STD_LOGIC;
               Y : out STD_LOGIC);
    end component;

    component XORGate is
        Port ( A : in  STD_LOGIC;
               B : in  STD_LOGIC;
               Y : out STD_LOGIC);
    end component;

begin

    AND1: ANDGate port map (A => A, B => B, Y => C);
    XOR1: XORGate port map (A => A, B => B, Y => S);

end Structural;