library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ORGate is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Y : out STD_LOGIC);
end ORGate;

architecture Structural of ORGate is

    component NANDGate is
        Port ( A : in  STD_LOGIC;
               B : in  STD_LOGIC;
               Y : out STD_LOGIC);
    end component;

    signal w1, w2 : STD_LOGIC;

begin

    NAND1: NANDGate port map (A => A,  B => A,  Y => w1);
    NAND2: NANDGate port map (A => B,  B => B,  Y => w2);
    NAND3: NANDGate port map (A => w1, B => w2, Y => Y);

end Structural;