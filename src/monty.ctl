@expand=#DEF(#GRAFIX(a) #UDGARRAY2,7,4,2(($a);($a+1);($a+$10);($a+$11)))
@expand=#DEF(#GRAFIXDH(a) #UDGARRAY2,7,4,2(($a);($a+1);($a+$10);($a+$11);($a+$80);($a+$81);($a+$90);($a+$91)))
@expand=#DEF(#GRAFIXSTR(a)(s) #GRAFIX($a)(${s}_a*)#GRAFIX($a+$20)(${s}_b*)#GRAFIX($a+$40)(${s}_c*)#GRAFIX($a+$60)(${s}_d*) #UDGARRAY*(${s}_a;${s}_b;${s}_c;${s}_d)($s))
@expand=#DEF(#GRAFIXDHSTR(a)(s) #GRAFIXDH($a)(${s}_a*)#GRAFIXDH($a+$20)(${s}_b*)#GRAFIXDH($a+$40)(${s}_c*)#GRAFIXDH($a+$60)(${s}_d*) #UDGARRAY*(${s}_a;${s}_b;${s}_c;${s}_d)($s))

b $4000 Loading screen

u $5B00 Not used

c $5B5B IM2 vector jump
D $5B5B This routine is called by the IM2 vector jump at #R$C700. The specific code changes throughout the game, depending on what should happen at which point.

u $5B5E

g $5C76 Next pseudo-random number
W $5C76

u $5C78

g $5C7B Current x co-ordinate
g $5C7C Current y co-ordinate

w $5C7D Abide With Me tune data

b $5CE1 Game won message
D $5CE1 OUR GALLANT MOLES / COMPLETED THE TASK / THROUGH PICKETS THICK / HIS LUCK DID LAST
D $5CE1 THE FALLING FLOORS / DID NOT DISUADE / OUR HERO MONTYS / TRAIL WAS MADE
D $5CE1 TO ARTHURS CASTLE / THE FINAL TEST / BRAVE MONTYS THERE / TO PUT TO REST
D $5CE1 THE MAN WHO DARED / TO STOP THE COAL / TO WARM THE FIRE / OF MONTY MOLE
D $5CE1 ONE FINAL HAIRSPRAY / TO AVOID / WATCH OUR ARTHUR / HE IS ANNOYED
D $5CE1 OUR MOLE HAS ARTHUR / NOW HE IS STOPPED / MONTY ESCAPES / OH NO HE IS COPPED
D $5CE1 CRIME DOES NOT PAY / MY LITTLE MOLE / IT WILL NOT DO / TO STEAL THE COAL
D $5CE1 THE JUDGE HE SAYS / LOCK HIM AWAY / FOR FIVE WHOLE YEARS / THAT START TODAY
D $5CE1 MONTY STUNNED / HIS MOUTH AGAPE / AND NOW WHO DARES / PLAN HIS ESCAPE

b $5F43 Hidden message
D $5F43 "  BY IAN"

i $5F4D

b $6000 Bucket
D $6000 #GRAFIXSTR($6000)(Bucket)
b $6080 Miner
D $6080 ##GRAFIXDHSTR($6080)(Miner)
b $6180 Dog
D $6180 #GRAFIXSTR($6180)(Dog)
b $6200 Squirrel L
D $6200 #GRAFIXSTR($6200)(Squirrel_L)
b $6280 Squirrel R
D $6280 #GRAFIXSTR($6280)(Squirrel_R)
b $6300 Nut
D $6300 #GRAFIXSTR($6300)(Nut)
b $6380 Police helmet alien thingy
D $6380 #GRAFIXSTR($6380)(Helmet)
b $6400 Candle
D $6400 #GRAFIXSTR($6400)(Candle)
b $6480 Bat
D $6480 #GRAFIXSTR($6480)(Bat)
b $6500 No smoking sign
D $6500 #GRAFIXSTR($6500)(No_smoking)
b $6580 Arthur L
D $6580 #GRAFIXSTR($6580)(Arthur_L)
b $6600 Arthur R
D $6600 #GRAFIXSTR($6600)(Arthur_R)
b $6680 Aerosol L
D $6680 #GRAFIXSTR($6680)(Aerosol_L)
b $6700 Aerosol R
D $6700 #GRAFIXSTR($6700)(Aerosol_R)
b $6780 Lightbulb
D $6780 #GRAFIXSTR($6780)(Lightbulb)
b $6800 Jawed critter L
D $6800 #GRAFIXSTR($6800)(Critter_L)
b $6880 Jawed critter R
D $6880 #GRAFIXSTR($6880)(Critter_R)
b $6900 Star
D $6900 #GRAFIXSTR($6900)(Star)
b $6980 Grumpy face
D $6980 #GRAFIXSTR($6980)(Grumpy_face)
b $6A00 Miner's helmet
D $6A00 #GRAFIXSTR($6A00)(Helmet)
b $6A80 Worried face
D $6A80 #GRAFIXSTR($6A80)(Worried_face)
b $6B00 Snake
D $6B00 #GRAFIXSTR($6B00)(Snake)
b $6B80 Ghost L
D $6B80 #GRAFIXSTR($6B80)(Ghost_L)
b $6C00 Ghost R
D $6C00 #GRAFIXSTR($6C00)(Ghost_R)
b $6C80 Genie L
D $6C80 #GRAFIXSTR($6C80)(Genie_L)
b $6D00 Genie R
D $6D00 #GRAFIXSTR($6D00)(Genie_R)
b $6D80 Peasant
D $6D80 #GRAFIXSTR($6D80)(Peasant)
b $6E00 Bee
D $6E00 #GRAFIXSTR($6E00)(Bee)
b $6E80 Rock
D $6E80 #GRAFIXSTR($6E80)(Rock)
b $6F00 Brick
D $6F00 #GRAFIXSTR($6F00)(Brick)
b $6F80 Minecart
D $6F80 #GRAFIXSTR($6F80)(Minecart)
b $7000 Tipping minecart
D $7000 #GRAFIXSTR($7000)(Minecart_tipping)
b $7080 Flying fish (12 frames)
D $7080 #GRAFIX($7080)(fish_a*)#GRAFIX($70A0)(fish_b*)#GRAFIX($70C0)(fish_c*)#GRAFIX($70E0)(fish_d*)#GRAFIX($7100)(fish_e*)#GRAFIX($7120)(fish_f*)#GRAFIX($7140)(fish_g*)#GRAFIX($7160)(fish_h*)#GRAFIX($7180)(fish_i*)#GRAFIX($71A0)(fish_j*)#GRAFIX($71C0)(fish_k*)#GRAFIX($71E0)(fish_l*) #UDGARRAY*(fish_a;fish_b;fish_c;fish_d;fish_e;fish_f;fish_g;fish_h;fish_i,fish_j,fish_k,fish_l)(fish)
b $7200 Shark (32 frames)
D $7200 #UDG$7200,7,2,2#UDG$7201,7,2,2 #UDG$7220,7,2,2#UDG$7221,7,2,2 #UDG$7240,7,2,2#UDG$7241,7,2,2 #UDG$7260,7,2,2#UDG$7261,7,2,2 #UDG$7280,7,2,2#UDG$7281,7,2,2 #UDG$72A0,7,2,2#UDG$72A1,7,2,2 #UDG$72C0,7,2,2#UDG$72C1,7,2,2 #UDG$72E0,7,2,2#UDG$72E1,7,2,2 #UDG$7300,7,2,2#UDG$7301,7,2,2 #UDG$7320,7,2,2#UDG$7321,7,2,2 #UDG$7340,7,2,2#UDG$7341,7,2,2 #UDG$7360,7,2,2#UDG$7361,7,2,2 #UDG$7380,7,2,2#UDG$7381,7,2,2 #UDG$73A0,7,2,2#UDG$73A1,7,2,2 #UDG$73C0,7,2,2#UDG$73C1,7,2,2 #UDG$73E0,7,2,2#UDG$73E1,7,2,2
D $7200 #UDG$7210,7,2,2#UDG$7211,7,2,2 #UDG$7230,7,2,2#UDG$7231,7,2,2 #UDG$7250,7,2,2#UDG$7251,7,2,2 #UDG$7270,7,2,2#UDG$7271,7,2,2 #UDG$7290,7,2,2#UDG$7291,7,2,2 #UDG$72B0,7,2,2#UDG$72B1,7,2,2 #UDG$72D0,7,2,2#UDG$72D1,7,2,2 #UDG$72F0,7,2,2#UDG$72F1,7,2,2 #UDG$7310,7,2,2#UDG$7311,7,2,2 #UDG$7330,7,2,2#UDG$7331,7,2,2 #UDG$7350,7,2,2#UDG$7351,7,2,2 #UDG$7370,7,2,2#UDG$7371,7,2,2 #UDG$7390,7,2,2#UDG$7391,7,2,2 #UDG$73B0,7,2,2#UDG$73B1,7,2,2 #UDG$73D0,7,2,2#UDG$73D1,7,2,2 #UDG$73F0,7,2,2#UDG$73F1,7,2,2
b $7600 Devil
D $7600 #UDG$7600,7,,2#UDG$7601,7,,2 #UDG$7620,7,,2#UDG$7621,7,,2 #UDG$7640,7,,2#UDG$7641,7,,2 #UDG$7660,7,,2#UDG$7661,7,,2
D $7600 #UDG$7610,7,,2#UDG$7611,7,,2 #UDG$7630,7,,2#UDG$7631,7,,2 #UDG$7650,7,,2#UDG$7651,7,,2 #UDG$7670,7,,2#UDG$7671,7,,2
b $7680 Tap
D $7680 #UDG$7680,7,,2#UDG$7681,7,,2 #UDG$76A0,7,,2#UDG$76A1,7,,2 #UDG$76C0,7,,2#UDG$76C1,7,,2 #UDG$76E0,7,,2#UDG$76E1,7,,2
D $7680 #UDG$7690,7,,2#UDG$7691,7,,2 #UDG$76B0,7,,2#UDG$76B1,7,,2 #UDG$76D0,7,,2#UDG$76D1,7,,2 #UDG$76F0,7,,2#UDG$76F1,7,,2
b $7700 Pull chain
D $7700 #UDG$7700,7,,2#UDG$7701,7,,2 #UDG$7720,7,,2#UDG$7721,7,,2 #UDG$7740,7,,2#UDG$7741,7,,2 #UDG$7760,7,,2#UDG$7761,7,,2
D $7700 #UDG$7710,7,,2#UDG$7711,7,,2 #UDG$7730,7,,2#UDG$7731,7,,2 #UDG$7750,7,,2#UDG$7751,7,,2 #UDG$7770,7,,2#UDG$7771,7,,2
b $7780 (empty)
b $7800 Monty up
D $7800 #UDG$7800,7,,2#UDG$7801,7,,2 #UDG$7820,7,,2#UDG$7821,7,,2 #UDG$7840,7,,2#UDG$7841,7,,2 #UDG$7860,7,,2#UDG$7861,7,,2 #UDG$7880,7,,2#UDG$7881,7,,2 #UDG$78A0,7,,2#UDG$78A1,7,,2 #UDG$78C0,7,,2#UDG$78C1,7,,2 #UDG$78E0,7,,2#UDG$78E1,7,,2
D $7800 #UDG$7810,7,,2#UDG$7811,7,,2 #UDG$7830,7,,2#UDG$7831,7,,2 #UDG$7850,7,,2#UDG$7851,7,,2 #UDG$7870,7,,2#UDG$7871,7,,2 #UDG$7890,7,,2#UDG$7891,7,,2 #UDG$78B0,7,,2#UDG$78B1,7,,2 #UDG$78D0,7,,2#UDG$78D1,7,,2 #UDG$78F0,7,,2#UDG$78F1,7,,2
b $7900 Monty on pipe
D $7900 #UDG$7900,7,,2#UDG$7901,7,,2 #UDG$7920,7,,2#UDG$7921,7,,2 #UDG$7940,7,,2#UDG$7941,7,,2 #UDG$7960,7,,2#UDG$7961,7,,2 #UDG$7980,7,,2#UDG$7981,7,,2 #UDG$79A0,7,,2#UDG$79A1,7,,2 #UDG$79C0,7,,2#UDG$79C1,7,,2 #UDG$79E0,7,,2#UDG$79E1,7,,2
D $7900 #UDG$7910,7,,2#UDG$7911,7,,2 #UDG$7930,7,,2#UDG$7931,7,,2 #UDG$7950,7,,2#UDG$7951,7,,2 #UDG$7970,7,,2#UDG$7971,7,,2 #UDG$7990,7,,2#UDG$7991,7,,2 #UDG$79B0,7,,2#UDG$79B1,7,,2 #UDG$79D0,7,,2#UDG$79D1,7,,2 #UDG$79F0,7,,2#UDG$79F1,7,,2
b $7A00 Hammer
D $7A00 #UDG$7A00,7,,2#UDG$7A01,7,,2
D $7A00 #UDG$7A10,7,,2#UDG$7A11,7,,2
b $7A20 Drill
D $7A20 #UDG$7A20,7,,2#UDG$7A21,7,,2
D $7A20 #UDG$7A30,7,,2#UDG$7A31,7,,2
b $7A40 Pick
D $7A40 #UDG$7A40,7,,2#UDG$7A41,7,,2
D $7A40 #UDG$7A50,7,,2#UDG$7A51,7,,2
b $7A60 Scroll
D $7A60 #UDG$7A60,7,,2#UDG$7A61,7,,2
D $7A60 #UDG$7A70,7,,2#UDG$7A71,7,,2
b $7A80 Axe
D $7A80 #UDG$7A80,7,,2#UDG$7A81,7,,2
D $7A80 #UDG$7A90,7,,2#UDG$7A91,7,,2
b $7AA0 Detenator
D $7AA0 #UDG$7AA0,7,,2#UDG$7AA1,7,,2
D $7AA0 #UDG$7AB0,7,,2#UDG$7AB1,7,,2
b $7AC0 Dynamite
D $7AC0 #UDG$7AC0,7,,2#UDG$7AC1,7,,2
D $7AC0 #UDG$7AD0,7,,2#UDG$7AD1,7,,2
b $7AE0 Stick
D $7AE0 #UDG$7AE0,7,,2#UDG$7AE1,7,,2
D $7AE0 #UDG$7AF0,7,,2#UDG$7AF1,7,,2
b $7B00 Club
D $7B00 #UDG$7B00,7,,2#UDG$7B01,7,,2
D $7B00 #UDG$7B10,7,,2#UDG$7B11,7,,2
b $7B20 Shovel
D $7B20 #UDG$7B20,7,,2#UDG$7B21,7,,2
D $7B20 #UDG$7B30,7,,2#UDG$7B31,7,,2
b $7B40 Bucket
D $7B40 #UDG$7B40,7,,2#UDG$7B41,7,,2
D $7B40 #UDG$7B50,7,,2#UDG$7B51,7,,2
b $7B60 Spade
D $7B60 #UDG$7B60,7,,2#UDG$7B61,7,,2
D $7B60 #UDG$7B70,7,,2#UDG$7B71,7,,2
b $7B80 Scissors
D $7B80 #UDG$7B80,7,,2#UDG$7B81,7,,2
D $7B80 #UDG$7B90,7,,2#UDG$7B91,7,,2
b $7BA0 Key
D $7BA0 #UDG$7BA0,7,,2#UDG$7BA1,7,,2
D $7BA0 #UDG$7BB0,7,,2#UDG$7BB1,7,,2
b $7BC0 Shower head
D $7BC0 #UDG$7BC0,7,,2#UDG$7BC1,7,,2
D $7BC0 #UDG$7BD0,7,,2#UDG$7BD1,7,,2
b $7BE0 Plant
D $7BE0 #UDG$7BE0,7,,2#UDG$7BE1,7,,2
D $7BE0 #UDG$7BF0,7,,2#UDG$7BF1,7,,2
b $7C00 1-character graphics
D $7C00 #UDG$7C00,7,,2 #UDG$7C10,7,,2 #UDG$7C20,7,,2 #UDG$7C30,7,,2 #UDG$7C40,7,,2 #UDG$7C50,7,,2 #UDG$7C60,7,,2 #UDG$7C70,7,,2
D $7C00 #UDG$7C80,7,,2 #UDG$7C90,7,,2 #UDG$7CA0,7,,2 #UDG$7CB0,7,,2 #UDG$7CC0,7,,2 #UDG$7CD0,7,,2 #UDG$7CE0,7,,2 #UDG$7CF0,7,,2
D $7C00 #UDG$7D00,7,,2 #UDG$7D10,7,,2 #UDG$7D20,7,,2 #UDG$7D30,7,,2 #UDG$7D40,7,,2 #UDG$7D50,7,,2 #UDG$7D60,7,,2 #UDG$7D70,7,,2
D $7C00 #UDG$7D80,7,,2 #UDG$7D90,7,,2 #UDG$7DA0,7,,2 #UDG$7DB0,7,,2 #UDG$7DC0,7,,2 #UDG$7DD0,7,,2 #UDG$7DE0,7,,2 #UDG$7DF0,7,,2
D $7C00 #UDG$7E00,7,,2 #UDG$7E10,7,,2 #UDG$7E20,7,,2 #UDG$7E30,7,,2 #UDG$7E40,7,,2 #UDG$7E50,7,,2 #UDG$7E60,7,,2 #UDG$7E70,7,,2
D $7C00 #UDG$7E80,7,,2 #UDG$7E90,7,,2 #UDG$7EA0,7,,2 #UDG$7EB0,7,,2 #UDG$7EC0,7,,2 #UDG$7ED0,7,,2 #UDG$7EE0,7,,2 #UDG$7EF0,7,,2
D $7C00 #UDG$7F00,7,,2 #UDG$7F10,7,,2 #UDG$7F20,7,,2 #UDG$7F30,7,,2 #UDG$7F40,7,,2 #UDG$7F50,7,,2 #UDG$7F60,7,,2 #UDG$7F70,7,,2
D $7C00 #UDG$7F80,7,,2 #UDG$7F90,7,,2 #UDG$7FA0,7,,2 #UDG$7FB0,7,,2 #UDG$7FC0,7,,2 #UDG$7FD0,7,,2 #UDG$7FE0,7,,2 #UDG$7FF0,7,,2

c $8000 Display input options and wait to start
c $8069 Toggle the display on every interrupt so the selected option is flashing
c $808A Print a blank character on screen
c $8092 Print an option on the intro screen
c $809D Print a string
R $809D IX Pointer to string data
R $809D B Number of lines
c $80D1 Print a character on screen
R $80D1 HL Pointer to character
c $80FF Put a text character's attributes on screen
R $80FF IX Pointer to buffer of string data
R $80FF A upper attribute
R $80FF C lower attribute
b $8122 Intro string data (5 lines)
D $8122 Format is x position, y position, attribute, depth, attribute offset
B $8122,$19,5

b $813B Character set
D $813B #UDG$813B,7,2,1 #UDG$8143,7,2,1 #UDG$814B,7,2,1 #UDG$8153,7,2,1 #UDG$815B,7,2,1 #UDG$8163,7,2,1 #UDG$816B,7,2,1 #UDG$8173,7,2,1
D $813B #UDG$817B,7,2,1 #UDG$8183,7,2,1 #UDG$818B,7,2,1 #UDG$8193,7,2,1 #UDG$819B,7,2,1 #UDG$81A3,7,2,1 #UDG$81AB,7,2,1 #UDG$81B3,7,2,1
D $813B #UDG$81BB,7,2,1 #UDG$81C3,7,2,1 #UDG$81CB,7,2,1 #UDG$81D3,7,2,1 #UDG$81DB,7,2,1 #UDG$81E3,7,2,1 #UDG$81EB,7,2,1 #UDG$81F3,7,2,1
D $813B #UDG$81FB,7,2,1 #UDG$8203,7,2,1 #UDG$820B,7,2,1 #UDG$8213,7,2,1 #UDG$821B,7,2,1 #UDG$8223,7,2,1 #UDG$822B,7,2,1 #UDG$8233,7,2,1
D $813B #UDG$823B,7,2,1 #UDG$8243,7,2,1 #UDG$824B,7,2,1 #UDG$8253,7,2,1 #UDG$825B,7,2,1 #UDG$8263,7,2,1

b $826B
g $82A3 Game input : 0 - keyboard, 1 - Kempston, 2 - Sinclair
b $82A4
c $82A6 Check for player input
b $832E Last input data
D $832E 0 - up, 1 - down, 2 - left, 3 - right
D $832E Bit 7 set when jumping
c $832F Unused routine
c $8395 Select the graphic for Monty and return the address in HL
c $83AD Make a copy of the last movement data and act on it
c $83B5
c $8452
b $848C
g $848F Position off the ground (when jumping)
b $8490
w $8492
b $8494 Last movement data
b $849C Monty up
D $849C #UDG$849C,7,,2#UDG$849D,7,,2 #UDG$84BC,7,,2#UDG$84BD,7,,2 #UDG$84DC,7,,2#UDG$84DD,7,,2 #UDG$84FC,7,,2#UDG$84FD,7,,2 #UDG$851C,7,,2#UDG$851D,7,,2 #UDG$853C,7,,2#UDG$853D,7,,2 #UDG$855C,7,,2#UDG$855D,7,,2 #UDG$857C,7,,2#UDG$857D,7,,2
D $849C #UDG$84AC,7,,2#UDG$84AD,7,,2 #UDG$84CC,7,,2#UDG$84CD,7,,2 #UDG$84EC,7,,2#UDG$84ED,7,,2 #UDG$850C,7,,2#UDG$850D,7,,2 #UDG$852C,7,,2#UDG$852D,7,,2 #UDG$854C,7,,2#UDG$854D,7,,2 #UDG$856C,7,,2#UDG$856D,7,,2 #UDG$858C,7,,2#UDG$858D,7,,2
b $859C Monty left
D $859C #UDG$859C,7,,2#UDG$859D,7,,2 #UDG$85BC,7,,2#UDG$85BD,7,,2 #UDG$85DC,7,,2#UDG$85DD,7,,2 #UDG$85FC,7,,2#UDG$85FD,7,,2
D $859C #UDG$85AC,7,,2#UDG$85AD,7,,2 #UDG$85CC,7,,2#UDG$85CD,7,,2 #UDG$85EC,7,,2#UDG$85ED,7,,2 #UDG$860C,7,,2#UDG$860D,7,,2
b $861C Monty right
D $861C #UDG$861C,7,,2#UDG$861D,7,,2 #UDG$863C,7,,2#UDG$863D,7,,2 #UDG$865C,7,,2#UDG$865D,7,,2 #UDG$867C,7,,2#UDG$867D,7,,2
D $861C #UDG$862C,7,,2#UDG$862D,7,,2 #UDG$864C,7,,2#UDG$864D,7,,2 #UDG$866C,7,,2#UDG$866D,7,,2 #UDG$868C,7,,2#UDG$868D,7,,2
b $869C
c $86BC
c $870E
c $871D
c $872F Unused routine
u $874E
c $8751 Move all the nasties on the screen
c $88F4
c $8964 Update next position for nasties
c $89D4 Update Monty's position
c $8A0A Move Monty along the ladder
c $8A63 Make Monty jump
c $8B0C
c $8B1F
c $8B34
c $8B90 Determine what Monty has collided with
c $8C3D Check if Monty can move (is there a wall in the way?)
c $8D0F Calculate new y position after jumping
D $8D0F A copy of this routine is at $8D2E
R $8D0F IY pointer to jump table
g $8D52 Room flags
D $8D52 If bit 3 is set, can touch one nasty without consequence
g $8D53 Game flags
D $8D53 If bit 0 is set, background animation can happen
D $8D53 If bit 1 is set, Monty is alive
g $8D54
g $8D55
g $8D58 Distance fallen by
g $8D59 Current attribute address of Monty
g $8D5B Y screen offset for attribute
g $8D5C X screen offset for attribute
g $8D5D
g $8D5E
c $8D5F Return the current screen address for Monty in HL
g $8D7D Temp store for screen position
c $8D7F Play death tune
c $8DCD Animate one frame of all moving objects
b $8E7A Crusher graphic
D $8E7A #UDG$8E7A,7,,3#UDG$8E7B,7,,3#UDG$8E7C,7,,3
c $8E9B Toggle the brightness status on an object
c $8EDD Animate Monty's angel as he has died
c $8F31 Update the moving platforms
c $8F9F IM2 routine for main game
D $8F9F Animate all opening / closing platforms, crushers, and Monty dying (if appropriate)
c $9052 Update one left side of a moving platform
D $9052 The routine is called at #R$9052 for the left side, and #R$9058 for the right side
c $90A3 Update one byte of a moving platform
R $90A3 HL Address to update
R $90A3 C New bits to include
c $90A8 Animate water
R $90A8 HL Starting screen address of the water
R $90A8 C Width of the water in UDGs
c $90BD Animate the shower water in room #N$11
b $910B
b $912B
c $912C Animate the shower water in room #N$11 (2)
c $9148 Check that a crusher has killed Monty
D $9148 This is done by checking the area three lines under the crusher is empty
D $9148 If not, Monty must be underneath it, and is crushed!
c $917A Make Monty climb a ladder
c $919D Add value of coal to the current score indicated by value in A
c $91E8 Print the score
b $9212 Score position data
g $9217 Current score (in reverse digits)
b $921C "SCORE: "
g $9223 Current score (in text)
c $9228 Calculate screen offset from position
c $9258 See if Monty is touching some coal and can collect it
c $9298 Check if Monty is at the edge of the playing area
D $9298 Control continues to $92DF
c $92DF Monty has touched something, react appropriately
c $927E Check if Monty is touching a (non-coal) collectable item, and if so, pick it up
c $9327 Return IX pointing to the index of the nasty Monty is touching, or 0 
c $935C Set up the location of coal in the room
c $940C Enter a room
c $946E Monty has died. Play the "death" tune and lose a life
c $949E Print the number of lives on the screen
b $94B6 Lives display position
b $94BB Lives display text
c $94C3 Copy the data for the current room into the working buffer
c $94D9 Move into a new room
c $952F Put (non coal) collectable objects on screen
c $9551 Display the current room
c $9568 Pick up an item
c $95B3 Set up behaviour for each location in the room
c $960F Draw the coal in the room
R $960F IX Pointer to coal information
b $9643
g $9649 Current room
g $964A Number of lives
g $964B Start position for this room (when a life is lost)
b $964D Array of points given for each 'nth' coal item
D $964D If bit 7 is set, Monty has picked this coal up
c $968D Clear a non-coal item, as it has been collected 
c $96AA Clear any coal in the room
b $96D1 Temporary space for coal data
c $96D9 Animate the rolling minecart in room 16
u $979B Monty rolling (not used)
D $979B #UDG$979B,7,,2#UDG$979C,7,,2 #UDG$97BB,7,,2#UDG$97BC,7,,2 #UDG$97DB,7,,2#UDG$97DC,7,,2 #UDG$97FB,7,,2#UDG$97FC,7,,2
D $979B #UDG$97AB,7,,2#UDG$97AC,7,,2 #UDG$97CB,7,,2#UDG$97CC,7,,2 #UDG$97EB,7,,2#UDG$97EC,7,,2 #UDG$980B,7,,2#UDG$980C,7,,2
u $981B Unused
C $981B

b $9A2A Room 00
D $9A2A The current room is copied into C42A
B $9A2A,$F0,3 Static characters
B $9B1A Overhead for jumping
B $9B20 Next room UP
B $9B21 Next room DOWN
B $9B22 Next room LEFT
B $9B23 Next room RIGHT
B $9B24 Collectable item x co-ordinate
B $9B25 Collectable item y co-ordinate
B $9B26 Collectable item graphic index
B $9B27 Crusher x co-ordinate
B $9B28 Crusher y co-ordinate
B $9B29
B $9B2A Crusher time
B $9B2B Crusher flag
B $9B2C
B $9B2D,$0A
B $9B37 Coal UDG
B $9B3F,9,3 Coal positions
B $9B48
B $9B4E Static character graphic IDs
B $9B96,$8C,$14 Nasty data
B $9C22

b $9C2A Room 01
D $9C2A The current room is copied into C42A
B $9C2A,$F0,3 Static characters
B $9D1A Overhead for jumping
B $9D20 Next room UP
B $9D21 Next room DOWN
B $9D22 Next room LEFT
B $9D23 Next room RIGHT
B $9D24 Collectable item x co-ordinate
B $9D25 Collectable item y co-ordinate
B $9D26 Collectable item graphic index
B $9D27 Crusher x co-ordinate
B $9D28 Crusher y co-ordinate
B $9D29
B $9D2A Crusher time
B $9D2B Crusher flag
B $9D2C
B $9D2D,$0A
B $9D37 Coal UDG
B $9D3F,9,3 Coal positions
B $9D48
B $9D4E Static character graphic IDs
B $9D96,$8C,$14 Nasty data
B $9E22

b $9E2A Room 02
D $9E2A The current room is copied into C42A
B $9E2A,$F0,3 Static characters
B $9F1A Overhead for jumping
B $9F20 Next room UP
B $9F21 Next room DOWN
B $9F22 Next room LEFT
B $9F23 Next room RIGHT
B $9F24 Collectable item x co-ordinate
B $9F25 Collectable item y co-ordinate
B $9F26 Collectable item graphic index
B $9F27 Crusher x co-ordinate
B $9F28 Crusher y co-ordinate
B $9F29
B $9F2A Crusher time
B $9F2B Crusher flag
B $9F2C
B $9F2D,$0A
B $9F37 Coal UDG
B $9F3F,9,3 Coal positions
B $9F48
B $9F4E Static character graphic IDs
B $9F96,$8C,$14 Nasty data
B $A022

b $A02A Room 03
D $A02A The current room is copied into C42A
B $A02A,$F0,3 Static characters
B $A11A Overhead for jumping
B $A120 Next room UP
B $A121 Next room DOWN
B $A122 Next room LEFT
B $A123 Next room RIGHT
B $A124 Collectable item x co-ordinate
B $A125 Collectable item y co-ordinate
B $A126 Collectable item graphic index
B $A127 Crusher x co-ordinate
B $A128 Crusher y co-ordinate
B $A129
B $A12A Crusher time
B $A12B Crusher flag
B $A12C
B $A12D,$0A
B $A137 Coal UDG
B $A13F,9,3 Coal positions
B $A148
B $A14E Static character graphic IDs
B $A196,$8C,$14 Nasty data
B $A222

b $A22A Room 04
D $A22A The current room is copied into C42A
B $A31A Overhead for jumping
B $A320 Next room UP
B $A321 Next room DOWN
B $A322 Next room LEFT
B $A323 Next room RIGHT
B $A324 Collectable item x co-ordinate
B $A325 Collectable item y co-ordinate
B $A326 Collectable item graphic index
B $A327 Crusher x co-ordinate
B $A328 Crusher y co-ordinate
B $A329
B $A32A Crusher time
B $A32B Crusher flag
B $A32C
B $A32D,$0A
B $A337 Coal UDG
B $A33F,9,3 Coal positions
B $A348
B $A34E Static character graphic IDs
B $A396,$8C,$14 Nasty data
B $A422

b $A42A Room 05
D $A42A The current room is copied into C42A
B $A51A Overhead for jumping
B $A520 Next room UP
B $A521 Next room DOWN
B $A522 Next room LEFT
B $A523 Next room RIGHT
B $A524 Collectable item x co-ordinate
B $A525 Collectable item y co-ordinate
B $A526 Collectable item graphic index
B $A527 Crusher x co-ordinate
B $A528 Crusher y co-ordinate
B $A529
B $A52A Crusher time
B $A52B Crusher flag
B $A52C
B $A52D,$0A
B $A537 Coal UDG
B $A53F,9,3 Coal positions
B $A548
B $A54E Static character graphic IDs
B $A596,$8C,$14 Nasty data
B $A622

b $A62A Room 06
D $A62A The current room is copied into C42A
B $A71A Overhead for jumping
B $A720 Next room UP
B $A721 Next room DOWN
B $A722 Next room LEFT
B $A723 Next room RIGHT
B $A724 Collectable item x co-ordinate
B $A725 Collectable item y co-ordinate
B $A726 Collectable item graphic index
B $A727 Crusher x co-ordinate
B $A728 Crusher y co-ordinate
B $A729
B $A72A Crusher time
B $A72B Crusher flag
B $A72C
B $A72D,$0A
B $A737 Coal UDG
B $A73F,9,3 Coal positions
B $A748
B $A74E Static character graphic IDs
B $A796,$8C,$14 Nasty data
B $A822

b $A82A Room 07
D $A82A The current room is copied into C42A
B $A91A Overhead for jumping
B $A920 Next room UP
B $A921 Next room DOWN
B $A922 Next room LEFT
B $A923 Next room RIGHT
B $A924 Collectable item x co-ordinate
B $A925 Collectable item y co-ordinate
B $A926 Collectable item graphic index
B $A927 Crusher x co-ordinate
B $A928 Crusher y co-ordinate
B $A929
B $A92A Crusher time
B $A92B Crusher flag
B $A92C
B $A92D,$0A
B $A937 Coal UDG
B $A93F,9,3 Coal positions
B $A948
B $A94E Static character graphic IDs
B $A996,$8C,$14 Nasty data
B $AA22

b $AA2A Room 08
D $AA2A The current room is copied into C42A
B $AB1A Overhead for jumping
B $AB20 Next room UP
B $AB21 Next room DOWN
B $AB22 Next room LEFT
B $AB23 Next room RIGHT
B $AB24 Collectable item x co-ordinate
B $AB25 Collectable item y co-ordinate
B $AB26 Collectable item graphic index
B $AB27 Crusher x co-ordinate
B $AB28 Crusher y co-ordinate
B $AB29
B $AB2A Crusher time
B $AB2B Crusher flag
B $AB2C
B $AB2D,$0A
B $AB37 Coal UDG
B $AB3F,9,3 Coal positions
B $AB48
B $AB4E Static character graphic IDs
B $AB96,$8C,$14 Nasty data
B $AC22

b $AC2A Room 09
D $AC2A The current room is copied into C42A
B $AD1A Overhead for jumping
B $AD20 Next room UP
B $AD21 Next room DOWN
B $AD22 Next room LEFT
B $AD23 Next room RIGHT
B $AD24 Collectable item x co-ordinate
B $AD25 Collectable item y co-ordinate
B $AD26 Collectable item graphic index
B $AD27 Crusher x co-ordinate
B $AD28 Crusher y co-ordinate
B $AD29
B $AD2A Crusher time
B $AD2B Crusher flag
B $AD2C
B $AD2D,$0A
B $AD37 Coal UDG
B $AD3F,9,3 Coal positions
B $AD48
B $AD4E Static character graphic IDs
B $AD96,$8C,$14 Nasty data
B $AE22

b $AE2A Room 0A
D $AE2A The current room is copied into C42A
B $AF1A Overhead for jumping
B $AF20 Next room UP
B $AF21 Next room DOWN
B $AF22 Next room LEFT
B $AF23 Next room RIGHT
B $AF24 Collectable item x co-ordinate
B $AF25 Collectable item y co-ordinate
B $AF26 Collectable item graphic index
B $AF27 Crusher x co-ordinate
B $AF28 Crusher y co-ordinate
B $AF29
B $AF2A Crusher time
B $AF2B Crusher flag
B $AF2C
B $AF2D,$0A
B $AF37 Coal UDG
B $AF3F,9,3 Coal positions
B $AF48
B $AF4E Static character graphic IDs
B $AF96,$8C,$14 Nasty data
B $B022

b $B02A Room 0B
D $B02A The current room is copied into C42A
B $B11A Overhead for jumping
B $B120 Next room UP
B $B121 Next room DOWN
B $B122 Next room LEFT
B $B123 Next room RIGHT
B $B124 Collectable item x co-ordinate
B $B125 Collectable item y co-ordinate
B $B126 Collectable item graphic index
B $B127 Crusher x co-ordinate
B $B128 Crusher y co-ordinate
B $B129
B $B12A Crusher time
B $B12B Crusher flag
B $B12C
B $B12D,$0A
B $B137 Coal UDG
B $B13F,9,3 Coal positions
B $B148
B $B14E Static character graphic IDs
B $B196,$8C,$14 Nasty data
B $B222

b $B22A Room 0C
D $B22A The current room is copied into C42A
B $B31A Overhead for jumping
B $B320 Next room UP
B $B321 Next room DOWN
B $B322 Next room LEFT
B $B323 Next room RIGHT
B $B324 Collectable item x co-ordinate
B $B325 Collectable item y co-ordinate
B $B326 Collectable item graphic index
B $B327 Crusher x co-ordinate
B $B328 Crusher y co-ordinate
B $B329
B $B32A Crusher time
B $B32B Crusher flag
B $B32C
B $B32D,$0A
B $B337 Coal UDG
B $B33F,9,3 Coal positions
B $B348
B $B34E Static character graphic IDs
B $B396,$8C,$14 Nasty data
B $B422

b $B42A Room 0D
D $B42A The current room is copied into C42A
B $B51A Overhead for jumping
B $B520 Next room UP
B $B521 Next room DOWN
B $B522 Next room LEFT
B $B523 Next room RIGHT
B $B524 Collectable item x co-ordinate
B $B525 Collectable item y co-ordinate
B $B526 Collectable item graphic index
B $B527 Crusher x co-ordinate
B $B528 Crusher y co-ordinate
B $B529
B $B52A Crusher time
B $B52B Crusher flag
B $B52C
B $B52D,$0A
B $B537 Coal UDG
B $B53F,9,3 Coal positions
B $B548
B $B54E Static character graphic IDs
B $B596,$8C,$14 Nasty data
B $B622

b $B62A Room 0E
D $B62A The current room is copied into C42A
B $B71A Overhead for jumping
B $B720 Next room UP
B $B721 Next room DOWN
B $B722 Next room LEFT
B $B723 Next room RIGHT
B $B724 Collectable item x co-ordinate
B $B725 Collectable item y co-ordinate
B $B726 Collectable item graphic index
B $B727 Crusher x co-ordinate
B $B728 Crusher y co-ordinate
B $B729
B $B72A Crusher time
B $B72B Crusher flag
B $B72C
B $B72D,$0A
B $B737 Coal UDG
B $B73F,9,3 Coal positions
B $B748
B $B74E Static character graphic IDs
B $B796,$8C,$14 Nasty data
B $B822

b $B82A Room 0F
D $B82A The current room is copied into C42A
B $B91A Overhead for jumping
B $B920 Next room UP
B $B921 Next room DOWN
B $B922 Next room LEFT
B $B923 Next room RIGHT
B $B924 Collectable item x co-ordinate
B $B925 Collectable item y co-ordinate
B $B926 Collectable item graphic index
B $B927 Crusher x co-ordinate
B $B928 Crusher y co-ordinate
B $B929
B $B92A Crusher time
B $B92B Crusher flag
B $B92C
B $B92D,$0A
B $B937 Coal UDG
B $B93F,9,3 Coal positions
B $B948
B $B94E Static character graphic IDs
B $B996,$8C,$14 Nasty data
B $BA22

b $BA2A Room 10
D $BA2A The current room is copied into C42A
B $BB1A Overhead for jumping
B $BB20 Next room UP
B $BB21 Next room DOWN
B $BB22 Next room LEFT
B $BB23 Next room RIGHT
B $BB24 Collectable item x co-ordinate
B $BB25 Collectable item y co-ordinate
B $BB26 Collectable item graphic index
B $BB27 Crusher x co-ordinate
B $BB28 Crusher y co-ordinate
B $BB29
B $BB2A Crusher time
B $BB2B Crusher flag
B $BB2C
B $BB2D,$0A
B $BB37 Coal UDG
B $BB3F,9,3 Coal positions
B $BB48
B $BB4E Static character graphic IDs
B $BB96,$8C,$14 Nasty data
B $BC22

b $BC2A Room 11
D $BC2A The current room is copied into C42A
B $BD1A Overhead for jumping
B $BD20 Next room UP
B $BD21 Next room DOWN
B $BD22 Next room LEFT
B $BD23 Next room RIGHT
B $BD24 Collectable item x co-ordinate
B $BD25 Collectable item y co-ordinate
B $BD26 Collectable item graphic index
B $BD27 Crusher x co-ordinate
B $BD28 Crusher y co-ordinate
B $BD29
B $BD2A Crusher time
B $BD2B Crusher flag
B $BD2C
B $BD2D,$0A
B $BD37 Coal UDG
B $BD3F,9,3 Coal positions
B $BD48
B $BD4E Static character graphic IDs
B $BD96,$8C,$14 Nasty data
B $BE22

b $BE2A Room 12
D $BE2A The current room is copied into C42A
B $BF1A Overhead for jumping
B $BF20 Next room UP
B $BF21 Next room DOWN
B $BF22 Next room LEFT
B $BF23 Next room RIGHT
B $BF24 Collectable item x co-ordinate
B $BF25 Collectable item y co-ordinate
B $BF26 Collectable item graphic index
B $BF27 Crusher x co-ordinate
B $BF28 Crusher y co-ordinate
B $BF29
B $BF2A Crusher time
B $BF2B Crusher flag
B $BF2C
B $BF2D,$0A
B $BF37 Coal UDG
B $BF3F,9,3 Coal positions
B $BF48
B $BF4E Static character graphic IDs
B $BF96,$8C,$14 Nasty data
B $C022

b $C02A Room 13
D $C02A The current room is copied into C42A
B $C11A Overhead for jumping
B $C120 Next room UP
B $C121 Next room DOWN
B $C122 Next room LEFT
B $C123 Next room RIGHT
B $C124 Collectable item x co-ordinate
B $C125 Collectable item y co-ordinate
B $C126 Collectable item graphic index
B $C127 Crusher x co-ordinate
B $C128 Crusher y co-ordinate
B $C129
B $C12A Crusher time
B $C12B Crusher flag
B $C12C
B $C12D,$0A
B $C137 Coal UDG
B $C13F,9,3 Coal positions
B $C148
B $C14E Static character graphic IDs
B $C196,$8C,$14 Nasty data
B $C222

b $C22A Room 14
D $C22A The current room is copied into C42A
B $C31A Overhead for jumping
B $C320 Next room UP
B $C321 Next room DOWN
B $C322 Next room LEFT
B $C323 Next room RIGHT
B $C324 Collectable item x co-ordinate
B $C325 Collectable item y co-ordinate
B $C326 Collectable item graphic index
B $C327 Crusher x co-ordinate
B $C328 Crusher y co-ordinate
B $C329
B $C32A Crusher time
B $C32B Crusher flag
B $C32C
B $C32D,$0A
B $C337 Coal UDG
B $C33F,9,3 Coal positions
B $C348
B $C34E Static character graphic IDs
B $C396,$8C,$14 Nasty data
B $C422

g $C42A Static characters on screen
D $C42A Each character is 3 bits ie: 3 bytes for 8 characters
D $C42A $0C bytes per line, $F0 bytes per page
B $C42A,$F0,3
g $C51A Current overhead for jumping
g $C520 Next room UP
g $C521 Next room DOWN
g $C522 Next room LEFT
g $C523 Next room RIGHT
g $C524 x co-ordinate of (non coal) collectable item
g $C525 y co-ordinate of (non coal) collectable item
g $C526 Graphic index of (non coal) collectable item
g $C527 x co-ordinate of crusher
g $C528 y co-ordinate of crusher
g $C529
g $C52A Ticks left until a crusher should fire
g $C52B If set to 1, the room has crushers
g $C52C
g $C537 Coal UDG
g $C53F Positions of coal in the room
B $C53F,$0F,3
g $C54E Static character graphics
g $C596 Nasty data
B $C596,$8C,$14
D $C596 Each data buffer contains :
D $C596 $00 - Set 1 to visible
D $C596 $0B - Set 1 to reverse direction
g $C622
c $CD26 Convert a sprite ID to a graphic offset in DE
R $CD26 A The graphic address to look up
c $C62A Copy the room graphic buffer to screen so it is visible
u $C641 Unused
C $C641
w $C700 IM2 vector jump table
u $C800
C $C800
b $C850
s $C88A
b $CA38
s $CA39
c $CAD1 Display the "game won" sequence
c $CB03 Print a message
R $CB03 IX Pointer to the text buffer
D $CB03 Characters are offsets from the character set at 813B (ie: ASCII - 20h)
D $CB03 or FE = end of message, FF = newline
c $CB93 Run one frame in the first (outdoor) room
b $CD32
c $CD41 Display the first (outdoor) room
c $CDC4 Monty has grabbed the bucket - start the miner chase
c $CDEF Interrupt routine for first room
g $CE19 Frame counter (when zero, background animation happens)
g $CE1A
c $CE1B
b $CECC
c $CECD Unused
c $CEEF
s $CF2C Unused
s $CF54 Screen attribute buffer
c $D254 Copy the screen to storage buffer
s $D260 Screen buffer
c $D260 Save game to tape
D $D260 Once the intro tune has played, this area to EA5F becomes the screen buffer
D $D260 Control continues to #R$D290
c $D290 Main entry point
D $D290 When the game has loaded, the ROM loading routine returns to here
u $D2E9
b $D5B9 Colonel Bogey tune data
B $D5B9,$448,4
D $D5B9 Each entry is 4 bytes - first two are pitch, second two are length
D $D5B9 This data is wiped as soon as the game proper starts as it becomes part of the screen buffer
u $DA01
w $EA60 Offsets from character to relative screen positions
c $EBE0 Print an animinated object on screen
b $EC65
c $EC6F Copy a sprite to the working buffer
c $ECA2 Copy a sprite to the screen
b $ECDC
w $ECE0
b $ECE4 Working buffer for moving sprites
u $ED24
C $ED24
b $ED2E
b $ED4E Chimney smoke for start room
D $ED4E #UDG$ED4E,7,,5#UDG$ED4F,7,,5#UDG$ED50,7,,5#UDG$ED51,7,,5#UDG$ED52,7,,5 #UDG$EDC6,7,,5#UDG$EDC7,7,,5#UDG$EDC8,7,,5#UDG$EDC9,7,,5#UDG$EDCA,7,,5 #UDG$EE3E,7,,5#UDG$EE3F,7,,5#UDG$EE40,7,,5#UDG$EE41,7,,5#UDG$EE42,7,,5 #UDG$EEB6,7,,5#UDG$EEB7,7,,5#UDG$EEB8,7,,5#UDG$EEB9,7,,5#UDG$EEBA,7,,5
D $ED4E #UDG$ED76,7,,5#UDG$ED77,7,,5#UDG$ED78,7,,5#UDG$ED79,7,,5#UDG$ED7A,7,,5 #UDG$EDEE,7,,5#UDG$EDEF,7,,5#UDG$EDF0,7,,5#UDG$EDF1,7,,5#UDG$EDF2,7,,5 #UDG$EE66,7,,5#UDG$EE67,7,,5#UDG$EE68,7,,5#UDG$EE69,7,,5#UDG$EE6A,7,,5 #UDG$EEDE,7,,5#UDG$EEDF,7,,5#UDG$EEE0,7,,5#UDG$EEE1,7,,5#UDG$EEE2,7,,5
D $ED4E #UDG$ED9E,7,,5#UDG$ED9F,7,,5#UDG$EDA0,7,,5#UDG$EDA1,7,,5#UDG$EDA2,7,,5 #UDG$EE16,7,,5#UDG$EE17,7,,5#UDG$EE18,7,,5#UDG$EE19,7,,5#UDG$EE1A,7,,5 #UDG$EE8E,7,,5#UDG$EE8F,7,,5#UDG$EE90,7,,5#UDG$EE91,7,,5#UDG$EE92,7,,5 #UDG$EF06,7,,5#UDG$EF07,7,,5#UDG$EF08,7,,5#UDG$EF09,7,,5#UDG$EF0A,7,,5
c $EF2E Animate the smoke in the start room
c $EF6B Initialize smoke animation in the start room
w $EF77 Pointer to smoke animation graphic
b $EF79 Frame number for smoke animation graphic
w $EF7A Screen offset address (from #R$EA60) to draw the smoke animation graphic
u $EF7C
c $EF7E Set up graphics for the start room
c $EFBD Draw static UDGs on the start room
R $EFBD HL Pointer to graphic IDs
R $EFBD A Character to print
R $EFBD D X position
R $EFBD E Y position
R $EFBD B Current row count
w $F041 Pointer to start room data
w $F043 Pointer to start room UDGs
w $F045
b $F04B End message
D $F04B WHY DID MONTY DIE TO FAST
D $F04B AREN'T 3 LIVES ENOUGH TO LAST
D $F04B THE HAZARDS THAT CONFRONT A MOLE
D $F04B IN SEARCH FOR HIS PRECIOUS COAL
D $F04B DON'T LET MONTY DIE IN VAIN
D $F04B PRESS A KEY AND TRY AGAIN
c $F0FB
b $F135
w $F14B Pointer to start room UDG data
b $F14D UDGs for start room
b $F37D Attributes for start room
b $F5AD
c $F64D See if Monty has picked up enough coal to open a blocking wall
c $F6A6 Hide any blocking walls if sufficient coal has been picked up
c $F7C7 Perform interrupt handler background updates
b $F7D1 Flags to indicate which blocking walls can open
c $F7D6 Start a new game
c $F817 Print the "game over" message and start a new game
c $F858 Print the "game won" message and start a new game
b $F86C
c $FA26
s $FD7B
c $FD9B
c $FDB9
c $FDD5 Print all static characters in the current room
c $FDEA Print a line characters in a room
c $FE41 Print a character in the room
c $FE86
c $FE8F
s $FE98
c $FEA2
c $FEC0
s $FEE7
c $FF00 Default to keyboard and reset IY
b $FF08
c $FF5B Halt and run one frame in the first (outdoor) room
b $FF60 Monty's angel
D $FF60 #UDG$FF60,7,,2#UDG$FF61,7,,2 #UDG$FF80,7,,2#UDG$FF81,7,,2 #UDG$FFA0,7,,2#UDG$FFA1,7,,2 #UDG$FFC0,7,,2#UDG$FFC1,7,,2
D $FF60 #UDG$FF70,7,,2#UDG$FF71,7,,2 #UDG$FF90,7,,2#UDG$FF91,7,,2 #UDG$FFB0,7,,2#UDG$FFB1,7,,2 #UDG$FFD0,7,,2#UDG$FFD1,7,,2
b $FFE0 Dead Monty
D $FFE0 #UDG$FFE0,7,,2#UDG$FFE1,7,,2
D $FFE0 #UDG$FFF0,7,,2#UDG$FFF1,7,,2