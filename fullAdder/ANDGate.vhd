library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ANDGate is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Y : out STD_LOGIC);
end ANDGate;

architecture Structural of ANDGate is

    component NANDGate is
        Port ( A : in  STD_LOGIC;
               B : in  STD_LOGIC;
               Y : out STD_LOGIC);
    end component;

    signal w1 : STD_LOGIC;

begin

    NAND1: NANDGate port map (A => A,  B => B,  Y => w1);
    NAND2: NANDGate port map (A => w1, B => w1, Y => Y);

end Structural;