library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder is
    Port ( A    : in  STD_LOGIC;
           B    : in  STD_LOGIC;
           Cin  : in  STD_LOGIC;
           S    : out STD_LOGIC;
           Cout : out STD_LOGIC);
end FullAdder;

architecture Structural of FullAdder is

    component ANDGate is
        Port ( A : in  STD_LOGIC;
               B : in  STD_LOGIC;
               Y : out STD_LOGIC);
    end component;

    component ORGate is
        Port ( A : in  STD_LOGIC;
               B : in  STD_LOGIC;
               Y : out STD_LOGIC);
    end component;

    component XORGate is
        Port ( A : in  STD_LOGIC;
               B : in  STD_LOGIC;
               Y : out STD_LOGIC);
    end component;

    signal s_xor1 : STD_LOGIC;
    signal s_and1 : STD_LOGIC;
    signal s_and2 : STD_LOGIC;

begin

    XOR1: XORGate port map (
        A => A,
        B => B,
        Y => s_xor1
    );

    XOR2: XORGate port map (
        A => s_xor1,
        B => Cin,
        Y => S
    );

    AND1: ANDGate port map (
        A => A,
        B => B,
        Y => s_and1
    );

    AND2: ANDGate port map (
        A => s_xor1,
        B => Cin,
        Y => s_and2
    );

    OR1: ORGate port map (
        A => s_and1,
        B => s_and2,
        Y => Cout
    );

end Structural;