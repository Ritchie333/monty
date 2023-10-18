> $4000 @expand=#DEF(#GRAFIX(a) #UDGARRAY2,7,4,2(($a);($a+1);($a+$10);($a+$11)))
> $4000 @expand=#DEF(#GRAFIXDH(a) #UDGARRAY2,7,4,2(($a);($a+1);($a+$10);($a+$11);($a+$80);($a+$81);($a+$90);($a+$91)))
> $4000 @expand=#DEF(#GRAFIXSTR(a)(s) #GRAFIX($a)(${s}_a*)#GRAFIX($a+$20)(${s}_b*)#GRAFIX($a+$40)(${s}_c*)#GRAFIX($a+$60)(${s}_d*) #UDGARRAY*(${s}_a;${s}_b;${s}_c;${s}_d)($s))
> $4000 @expand=#DEF(#GRAFIXDHSTR(a)(s) #GRAFIXDH($a)(${s}_a*)#GRAFIXDH($a+$20)(${s}_b*)#GRAFIXDH($a+$40)(${s}_c*)#GRAFIXDH($a+$60)(${s}_d*) #UDGARRAY*(${s}_a;${s}_b;${s}_c;${s}_d)($s))
> $4000 @expand=#DEF(#UDGSTR(a) #UDG($a+1,#PEEK$a) #UDG($a+10,#PEEK($a+9)) #UDG($a+$13,#PEEK($a+$12)) #UDG($a+$1C,#PEEK($a+$1B)) #UDG($a+$25,#PEEK($a+$24)) #UDG($a+$2E,#PEEK($a+$2D)) #UDG($a+$37,#PEEK($a+$36)) #UDG($a+$40,#PEEK($a+$3F)) )
> $4000
> $4000 @expand=#DEF(#UDGBYTES(a,n)
> $4000 @expand=+#IF($n==0)(#EVAL(#PEEK($a)/$20))
> $4000 @expand=+#IF($n==1)(#EVAL((#PEEK($a)&$1f)/4))
> $4000 @expand=+#IF($n==2)(#EVAL(((#PEEK($a)&$3)*2)+(#PEEK($a+1)/$80)))
> $4000 @expand=+#IF($n==3)(#EVAL(((#PEEK($a+1)&$7f)/$10)))
> $4000 @expand=+#IF($n==4)(#EVAL(((#PEEK($a+1)&$f)/2)))
> $4000 @expand=+#IF($n==5)(#EVAL(((#PEEK($a+1)&1)*4)+(#PEEK($a+2)/$40)))
> $4000 @expand=+#IF($n==6)(#EVAL((#PEEK($a+2)&$3f)/8))
> $4000 @expand=+#IF($n==7)(#EVAL(((#PEEK($a+2)&$7))))
> $4000 @expand=+)
> $4000
> $4000 @expand=#DEF(#UDGADDR(a,n) #EVAL($a+$124+#UDGBYTES($a+(($n/8)*3),($n%8))*9))
> $4000 @expand=#DEF(#UDGXSTR(a,n) #UDG(#UDGADDR($a,$n)+1,#PEEK(#UDGADDR($a,$n))))
> $4000 @expand=#DEF(#UDGXSCR(a)(s) #UDGS32,20,2(${s})(#UDGXSTR(#PC,32*$y+$x)(*${s})${s}) )
> $4000 @expand=#DEF(#UDGSADDR(y,x) #UDG($7C00+((#PEEK($F14D+(28*$y+$x))-$80)*8),#PEEK($F37D+(28*$y+$x))))
b $4000 Loading screen
D $4000 #UDGTABLE { #SCR2(loading) } TABLE#
B $4000,6912,8
u $5B00 Unused
B $5B00,91,8*11,3
c $5B5B IM2 vector jump
D $5B5B This routine is called by the IM2 vector jump at #R$C700. The specific code changes throughout the game, depending on what should happen at which point.
u $5B5E Unused
B $5B5E,280,8
g $5C76 Pseudo-random store for crushers
D $5C76 Used by the routine in #R$FD9B.
W $5C76,2,2
u $5C78 Unused
B $5C78,3,3
g $5C7B Current x co-ordinate
B $5C7B,1,1
g $5C7C Current y co-ordinate
B $5C7C,1,1
w $5C7D Abide With Me tune data
D $5C7D The first word is the length, the second is the frequency When both are 0 (or the angel reaches the top of the screen), the tune ends
W $5C7D,100,4
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
B $5CE1,610,8*76,2
b $5F43 Hidden message
D $5F43 "  BY IAN"
B $5F43,10,8,2
i $5F4D
b $6000 Bucket
D $6000 #GRAFIXSTR($6000)(Bucket)
B $6000,128,8
b $6080 Miner
D $6080 ##GRAFIXDHSTR($6080)(Miner)
B $6080,256,8
b $6180 Dog
D $6180 #GRAFIXSTR($6180)(Dog)
B $6180,128,8
b $6200 Squirrel L
D $6200 #GRAFIXSTR($6200)(Squirrel_L)
B $6200,128,8
b $6280 Squirrel R
D $6280 #GRAFIXSTR($6280)(Squirrel_R)
B $6280,128,8
b $6300 Nut
D $6300 #GRAFIXSTR($6300)(Nut)
B $6300,128,8
b $6380 Police helmet alien thingy
D $6380 #GRAFIXSTR($6380)(Helmet)
B $6380,128,8
b $6400 Candle
D $6400 #GRAFIXSTR($6400)(Candle)
B $6400,128,8
b $6480 Bat
D $6480 #GRAFIXSTR($6480)(Bat)
B $6480,128,8
b $6500 No smoking sign
D $6500 #GRAFIXSTR($6500)(No_smoking)
B $6500,128,8
b $6580 Arthur L
D $6580 #GRAFIXSTR($6580)(Arthur_L)
B $6580,128,8
b $6600 Arthur R
D $6600 #GRAFIXSTR($6600)(Arthur_R)
B $6600,128,8
b $6680 Aerosol L
D $6680 #GRAFIXSTR($6680)(Aerosol_L)
B $6680,128,8
b $6700 Aerosol R
D $6700 #GRAFIXSTR($6700)(Aerosol_R)
B $6700,128,8
b $6780 Lightbulb
D $6780 #GRAFIXSTR($6780)(Lightbulb)
B $6780,128,8
b $6800 Jawed critter L
D $6800 #GRAFIXSTR($6800)(Critter_L)
B $6800,128,8
b $6880 Jawed critter R
D $6880 #GRAFIXSTR($6880)(Critter_R)
B $6880,128,8
b $6900 Star
D $6900 #GRAFIXSTR($6900)(Star)
B $6900,128,8
b $6980 Grumpy face
D $6980 #GRAFIXSTR($6980)(Grumpy_face)
B $6980,128,8
b $6A00 Miner's helmet
D $6A00 #GRAFIXSTR($6A00)(Miner_helmet)
B $6A00,128,8
b $6A80 Worried face
D $6A80 #GRAFIXSTR($6A80)(Worried_face)
B $6A80,128,8
b $6B00 Snake
D $6B00 #GRAFIXSTR($6B00)(Snake)
B $6B00,128,8
b $6B80 Ghost L
D $6B80 #GRAFIXSTR($6B80)(Ghost_L)
B $6B80,128,8
b $6C00 Ghost R
D $6C00 #GRAFIXSTR($6C00)(Ghost_R)
B $6C00,128,8
b $6C80 Genie L
D $6C80 #GRAFIXSTR($6C80)(Genie_L)
B $6C80,128,8
b $6D00 Genie R
D $6D00 #GRAFIXSTR($6D00)(Genie_R)
B $6D00,128,8
b $6D80 Waterfall
D $6D80 #GRAFIXSTR($6D80)(Waterfall)
B $6D80,128,8
b $6E00 Bee
D $6E00 #GRAFIXSTR($6E00)(Bee)
B $6E00,128,8
b $6E80 Rock
D $6E80 #GRAFIXSTR($6E80)(Rock)
B $6E80,128,8
b $6F00 Brick
D $6F00 #GRAFIXSTR($6F00)(Brick)
B $6F00,128,8
b $6F80 Minecart
D $6F80 #GRAFIXSTR($6F80)(Minecart)
B $6F80,128,8
b $7000 Tipping minecart
D $7000 #GRAFIXSTR($7000)(Minecart_tipping)
B $7000,128,8
b $7080 Flying fish (12 frames)
D $7080 #GRAFIX($7080)(fish_a*)#GRAFIX($70A0)(fish_b*)#GRAFIX($70C0)(fish_c*)#GRAFIX($70E0)(fish_d*)#GRAFIX($7100)(fish_e*)#GRAFIX($7120)(fish_f*)#GRAFIX($7140)(fish_g*)#GRAFIX($7160)(fish_h*)#GRAFIX($7180)(fish_i*)#GRAFIX($71A0)(fish_j*)#GRAFIX($71C0)(fish_k*)#GRAFIX($71E0)(fish_l*) #UDGARRAY*(fish_a;fish_b;fish_c;fish_d;fish_e;fish_f;fish_g;fish_h;fish_i,fish_j,fish_k,fish_l)(fish)
B $7080,384,8
b $7200 Shark (16 frames)
D $7200 #GRAFIXDH($7200)(shark_a*)#GRAFIXDH($7220)(shark_b*)#GRAFIXDH($7240)(shark_c*)#GRAFIXDH($7260)(shark_d*) #GRAFIXDH($7300)(shark_e*)#GRAFIXDH($7320)(shark_f*)#GRAFIXDH($7340)(shark_g*)#GRAFIXDH($7360)(shark_h*) #GRAFIXDH($7400)(shark_i*)#GRAFIXDH($7420)(shark_j*)#GRAFIXDH($7440)(shark_k*)#GRAFIXDH($7460)(shark_l*) #GRAFIXDH($7500)(shark_m*)#GRAFIXDH($7520)(shark_n*)#GRAFIXDH($7540)(shark_o*)#GRAFIXDH($7560)(shark_p*) #UDGARRAY*(shark_a;shark_b;shark_c;shark_d;shark_e;shark_f;shark_g;shark_h;shark_i;shark_j;shark_k;shark_l;shark_m;shark_n;shark_o;shark_p)(shark)
B $7200,1024,8
b $7600 Devil
D $7600 #GRAFIXSTR($7600)(Devil)
B $7600,128,8
b $7680 Tap
D $7680 ##GRAFIXSTR($7680)(Tap)
B $7680,128,8
b $7700 Pull chain
D $7700 #GRAFIXSTR($7700)(Pull_chain)
B $7700,128,8
b $7780 (empty)
D $7780 This graphic is used to erase a sprite. Used by the drawing routine at #R$EBE0.
S $7780,128,$80
b $7800 Monty up
D $7800 #GRAFIXSTR($7800)(Monty_up)
B $7800,256,8
b $7900 Monty climbing
D $7900 #GRAFIXSTR($7900)(Monty_climbing)
B $7900,256,8
b $7A00 Hammer
D $7A00 #GRAFIX($7A00)(Hammer)
B $7A00,32,8
b $7A20 Drill
D $7A20 #GRAFIX($7A20)(Drill)
B $7A20,32,8
b $7A40 Pick
D $7A40 #GRAFIX($7A40)(Pick)
B $7A40,32,8
b $7A60 Scroll
D $7A60 #GRAFIX($7A60)(Scroll)
B $7A60,32,8
b $7A80 Axe
D $7A80 #GRAFIX($7A80)(Axe)
B $7A80,32,8
b $7AA0 Detenator
D $7AA0 #GRAFIX($7AA0)(Detenator)
B $7AA0,32,8
b $7AC0 Dynamite
D $7AC0 #GRAFIX($7AC0)(Dynamite)
B $7AC0,32,8
b $7AE0 Stick
D $7AE0 #GRAFIX($7AE0)(Stick)
B $7AE0,32,8
b $7B00 Club
D $7B00 #GRAFIX($7B00)(Club)
B $7B00,32,8
b $7B20 Shovel
D $7B20 #GRAFIX($7B20)(Shovel)
B $7B20,32,8
b $7B40 Bucket
D $7B40 #GRAFIX($7B40)(Static_bucket)
B $7B40,32,8
b $7B60 Spade
D $7B60 #GRAFIX($7B60)(Spade)
B $7B60,32,8
b $7B80 Scissors
D $7B80 #GRAFIX($7B80)(Scissors)
B $7B80,32,8
b $7BA0 Key
D $7BA0 #GRAFIX($7BA0)(Key)
B $7BA0,32,8
b $7BC0 Shower head
D $7BC0 #GRAFIX($7BC0)(Shower_head)
B $7BC0,32,8
b $7BE0 Plant
D $7BE0 #GRAFIX($7BE0)(Plant)
B $7BE0,32,8
b $7C00 Start room graphics
D $7C00 #UDG$7C00,7,,2 #UDG$7C10,7,,2 #UDG$7C20,7,,2 #UDG$7C30,7,,2 #UDG$7C40,7,,2 #UDG$7C50,7,,2 #UDG$7C60,7,,2 #UDG$7C70,7,,2
D $7C00 #UDG$7C80,7,,2 #UDG$7C90,7,,2 #UDG$7CA0,7,,2 #UDG$7CB0,7,,2 #UDG$7CC0,7,,2 #UDG$7CD0,7,,2 #UDG$7CE0,7,,2 #UDG$7CF0,7,,2
D $7C00 #UDG$7D00,7,,2 #UDG$7D10,7,,2 #UDG$7D20,7,,2 #UDG$7D30,7,,2 #UDG$7D40,7,,2 #UDG$7D50,7,,2 #UDG$7D60,7,,2 #UDG$7D70,7,,2
D $7C00 #UDG$7D80,7,,2 #UDG$7D90,7,,2 #UDG$7DA0,7,,2 #UDG$7DB0,7,,2 #UDG$7DC0,7,,2 #UDG$7DD0,7,,2 #UDG$7DE0,7,,2 #UDG$7DF0,7,,2
D $7C00 #UDG$7E00,7,,2 #UDG$7E10,7,,2 #UDG$7E20,7,,2 #UDG$7E30,7,,2 #UDG$7E40,7,,2 #UDG$7E50,7,,2 #UDG$7E60,7,,2 #UDG$7E70,7,,2
D $7C00 #UDG$7E80,7,,2 #UDG$7E90,7,,2 #UDG$7EA0,7,,2 #UDG$7EB0,7,,2 #UDG$7EC0,7,,2 #UDG$7ED0,7,,2 #UDG$7EE0,7,,2 #UDG$7EF0,7,,2
D $7C00 #UDG$7F00,7,,2 #UDG$7F10,7,,2 #UDG$7F20,7,,2 #UDG$7F30,7,,2 #UDG$7F40,7,,2 #UDG$7F50,7,,2 #UDG$7F60,7,,2 #UDG$7F70,7,,2
D $7C00 #UDG$7F80,7,,2 #UDG$7F90,7,,2 #UDG$7FA0,7,,2 #UDG$7FB0,7,,2 #UDG$7FC0,7,,2 #UDG$7FD0,7,,2 #UDG$7FE0,7,,2 #UDG$7FF0,7,,2
B $7C00,1024,8
c $8000 Display input options and wait to start
D $8000 Used by the routine at #R$F7D6.
C $8000,1 Disable interrupts.
C $8001,3 Display options.
C $8004,4 #N8127 - default option.
C $8008,5 Set default option to 1.
C $800D,1 Re-enable interrupts.
C $800E,5 Check top right of keyboard.
C $8013,2 Was '0' pressed?
C $8015,1 Return if so to start the game.
C $8016,3 Toggle the display flashing.
C $8019,3 Check top left of keyboard.
C $801C,6 If any keys were pressed, they will end up with positive bits after this.
C $8022,2 Jump back if no keys pressed.
C $8024,2 Was "1" pressed?
C $8026,2 Jump if not.
C $8028,8 Unflash the current selection.
C $8030,5 Set option 1.
C $8035,6 Point to first option and loop back?
C $803B,2 Was "2" pressed?
C $803D,2 Jump if not.
C $803F,8 Unflash the current selection.
C $8047,5 Set option 2.
C $804C,6 Point to second option and loop back.
C $8052,2 Was "3" pressed?
C $8054,2 Jump back if not.
C $8056,8 Unflash the current selection.
C $805E,5 Set option 3.
C $8063,6 Point to third option and loop back.
c $8069 Toggle the display on every interrupt so the selected option is flashing
D $8069 Used by the routine at #R$8000.
C $8069,1 Wait for interrupts.
C $806A,9 Loop the cycle counter through 0 - #N$F.
C $8073,1 Return if it is not time to change.
C $8074,10 Toggle the state flag between 0 and 1.
C $807E,3 If the state is 1, print a blank character.
C $8081,8 Otherwise, display the string.
c $808A Blank a character on screen
D $808A Used by the routine at #R$8069.
C $808A,2 Empty character.
C $808C,2 One character.
C $808E,3 Print it.
c $8092 Print an option on the intro screen
D $8092 Used by the routine at #R$8000.
C $8092,4 #R$8122 = options data
C $8096,4 #R$826B = strings to print
C $809A,2 Five lines
C $809C,1 Remember number of lines.
N $809D This entry point is used by the routines at #R$91E8 (printing the score) and #R$949E (printing the number of lives).
C $809D,5 Put the Y position in HL.
C $80A2,1 Double it to point at a whole word.
C $80A3,4 Add the base pointer to screen addresses (#R$EA60). so HL now points to the right row on screen.
C $80A7,5 Put the X position in DE.
C $80AC,4 Extract the screen address for this row and put it in HL.
C $80B0,1 Add the column, so HL points to the correct place on screen.
C $80B1,3 Get the character to print.
C $80B4,2 Bit 7 is used as a string terminator, not used here.
C $80B6,3 Print the character.
C $80B9,3 Get the character again.
C $80BC,2 Move to the next character.
C $80BE,1 Move to the next screen position.
C $80BF,4 If bit 7 is not set, loop back to print the next character.
C $80C3,10 Move to the next location data.
C $80CD,1 Restore the number of lines.
C $80CE,3 Loop back round if there is more to do, otherwise exit.
c $80D1 Print a character on screen
D $80D1 Used by the routine at #R$8092.
R $80D1 A ID of the character to print.
R $80D1 HL Location on screen.
C $80D1,1 Remember the screen location.
C $80D2,3 #R$813B = character set
C $80D5,8 Multiply the ID by 8 to get the right offset and store this in DE.
C $80DD,1 Restore screen location.
C $80DE,1 Remember screen location (again).
C $80DF,2 Five lines.
C $80E1,1 Get the current line.
C $80E2,1 Copy it to screen.
C $80E3,1 Next line in data.
C $80E4,1 Next line on screen.
C $80E5,2 Repeat for the right number of lines.
C $80E7,1 Restore screen location.
C $80E8,1 Remember screen location again.
C $80E9,4 Subtract #N$2E0 to move up a third.
C $80ED,2 Three remaining lines.
C $80EF,1 Get the current line.
C $80F0,1 Copy it to screen.
C $80F1,1 Next line in data.
C $80F2,1 Next line on screen.
C $80F3,2 Repeat for the right number of lines.
C $80F5,2 Lower attribute is always #N$47
C $80F7,3 Get the upper attribute.
C $80FA,3 Display the attributes.
C $80FD,2 Clean up the stack and return.
c $80FF Put a text character's attributes on screen
D $80FF Used by the routines at #R$8000, #R$8069, #R$808A and #R$80D1.
R $80FF IX Pointer to buffer of string data
R $80FF A upper attribute
R $80FF C lower attribute
C $80FF,3 Put the attribute in #REGb.
C $8102,3 Put the attribute position in #REGl.
C $8105,7 Multiply this by 32 to get a row offset and put it in #REGhl.
C $810C,6 Add the x position.
C $8112,4 Add the base address for the attribute buffer.
C $8116,3 Make #REGde the number of characters to advance by for each row.
C $8119,1 Set the upper attribute.
C $811A,1 Move to the next row.
C $811B,1 Set the lower attribute.
C $811C,2 Move back to the first row to set the next column.
C $811E,1 Move to the next column.
C $811F,3 Loop until all characters have been drawn.
b $8122 Intro string data (5 lines)
D $8122 Format is x position, y position, attribute, depth, attribute position
B $8122,25,5
b $813B Character set
D $813B #UDGARRAY39($813B-$826A-8-8)(charset)
B $813B,8,8 #N$00 #UDG(#PC)
B $8143,8,8 #N$01 #UDG(#PC)
B $814B,8,8 #N$02 #UDG(#PC)
B $8153,8,8 #N$03 #UDG(#PC)
B $815B,8,8 #N$04 #UDG(#PC)
B $8163,8,8 #N$05 #UDG(#PC)
B $816B,8,8 #N$06 #UDG(#PC)
B $8173,8,8 #N$07 #UDG(#PC)
B $817B,8,8 #N$08 #UDG(#PC)
B $8183,8,8 #N$09 #UDG(#PC)
B $818B,8,8 #N$0A #UDG(#PC)
B $8193,8,8 #N$0B #UDG(#PC)
B $819B,8,8 #N$0C #UDG(#PC)
B $81A3,8,8 #N$0D #UDG(#PC)
B $81AB,8,8 #N$0E #UDG(#PC)
B $81B3,8,8 #N$0F #UDG(#PC)
B $81BB,8,8 #N$10 #UDG(#PC)
B $81C3,8,8 #N$11 #UDG(#PC)
B $81CB,8,8 #N$12 #UDG(#PC)
B $81D3,8,8 #N$13 #UDG(#PC)
B $81DB,8,8 #N$14 #UDG(#PC)
B $81E3,8,8 #N$15 #UDG(#PC)
B $81EB,8,8 #N$16 #UDG(#PC)
B $81F3,8,8 #N$17 #UDG(#PC)
B $81FB,8,8 #N$18 #UDG(#PC)
B $8203,8,8 #N$19 #UDG(#PC)
B $820B,8,8 #N$1A #UDG(#PC)
B $8213,8,8 #N$1B #UDG(#PC)
B $821B,8,8 #N$1C #UDG(#PC)
B $8223,8,8 #N$1D #UDG(#PC)
B $822B,8,8 #N$1E #UDG(#PC)
B $8233,8,8 #N$1F #UDG(#PC)
B $823B,8,8 #N$20 #UDG(#PC)
B $8243,8,8 #N$21 #UDG(#PC)
B $824B,8,8 #N$22 #UDG(#PC)
B $8253,8,8 #N$23 #UDG(#PC)
B $825B,8,8 #N$24 #UDG(#PC)
B $8263,8,8 #N$25 #UDG(#PC)
b $826B Intro string text
D $826B "OPTIONS" "1:  KEYBOARD" "2:  KEMPSTON" "3:  SINCLAIR" "0:  PLAY GAME"
B $826B,56,7,12*3,13
g $82A3 Game input : 0 - keyboard, 1 - Kempston, 2 - Sinclair
B $82A3,1,1
g $82A4 Frame counter for input options
D $82A4 Cycles between 00 and #N$0F. Used by the routine at #R$82A5.
B $82A4,1,1
g $82A5 Set to 0 to print an option, or 1 to hide it
D $82A5 Used by the routine at #R$82A5.
B $82A5,1,1
c $82A6 Check for player input
D $82A6 Used by the routines at #R$940C and #R$CD41.
C $82A6,3 #R$832E is the last player input.
C $82A9,2 Default to "up" / "not jumping".
C $82AB,3 Get the control type.
C $82AE,2 Is it keyboard?
C $82B0,2 Jump forward if not.
N $82B2 Check for keyboard input
C $82B2,5 Check for Q-T on the keyboard.
C $82B7,2 Was 'Q' pressed?
C $82B9,2 Skip if not.
C $82BB,3 Set input to "up" and move forward.
C $82BE,3 Check for A-G on the keyboard.
C $82C1,1 Change flag to "down".
C $82C2,2 Read the keyboard.
C $82C4,2 Was 'A' pressed?
C $82C6,2 Skip if not.
C $82C8,3 Set input to "down" and move forward.
C $82CB,3 Check for P-Y on the keyboard.
C $82CE,1 Change flag to "left".
C $82CF,2 Read the keyboard.
C $82D1,2 Was 'O' pressed?
C $82D3,2 Skip if not.
C $82D5,3 Set input to "left" and move forward.
C $82D8,2 Was 'P' pressed?
C $82DA,2 Skip if not.
C $82DC,2 Set input to "right".
C $82DE,3 Read SPACE-B
C $82E1,2 Read the keyboard.
C $82E3,4 Were any keys pressed?
C $82E7,1 Return if not.
C $82E8,3 Set the "jump" bit and return.
N $82EB Check for joystick input
C $82EB,2 Is the input Kempston?
C $82ED,2 Jump forward if not.
C $82EF,2 Read the Kempston interface
C $82F1,2 Was the joystick moved up?
C $82F3,2 Skip if not.
C $82F5,3 Set input to "up" and move forward to check the fire button.
C $82F8,1 Change flag to "down"
C $82F9,2 Was the joystick moved down?
C $82FB,2 Set this input if so.
C $82FD,1 Change flag to "left"
C $82FE,2 Was the joystick moved left?
C $8300,2 Set this input if so.
C $8302,1 Change flag to "right"
C $8303,2 Was the joystick moved right?
C $8305,2 Set this input if so.
C $8307,2 Was the fire button pressed?
C $8309,1 Return if not.
C $830A,3 Set the "jump" bit and return.
N $830D Check for Sinclair joystick input
C $830D,5 Read 1-5 on the keyboard
C $8312,2 Was '4' pressed?
C $8314,2 Skip if not.
C $8316,3 Set input to "up" and move forward.
C $8319,1 Change state to "down".
C $831A,2 Was '3' pressed?
C $831C,2 Set this input if so.
C $831E,1 Change state to "left".
C $831F,2 Was '1' pressed?
C $8321,2 Set this input if so.
C $8323,1 Change state to "right".
C $8324,2 Was '2' pressed?
C $8326,2 Set this input if so.
C $8328,2 Was '5' pressed?
C $832A,1 Return if not.
C $832B,3 Set the "jump" bit and return.
g $832E Last input data
D $832E #TABLE( default, center) { =h value | =h description } { 0 | up } { 1 | down } { 2 | left } { 3 | right } { 4 | no movement } TABLE# Bit 7 is set when jumping.
N $832E Set by the routine in #R$82A6, referenced by the routines at #R$8395, #R$83AD, #R$83B5, #R$8D94, #R$8A63, #R$8B1F and #R$917A.
B $832E,1,1
u $832F Unused
C $832F,3 Get the current position off the ground.
C $8332,1 Is it zero?
C $8333,3 Jump forward if not.
C $8336,3 Get the last movement (#R$832E).
C $8339,2 Was "jump" pressed?
C $833B,2 Jump forward if not.
C $833D,5 Reset the jump flag.
C $8342,5 Get the last movement without the jump bit.
C $8347,2 Was there any movement?
C $8349,1 Return if not.
C $834A,25
C $8363,3 This entry point is used by the routine at #R$83AD.
C $8366,47
c $8395 Select the graphic for Monty
D $8395 Used by the routines at #R$8A0A and #R$8A63.
R $8395 A Frame number ( 0 - 3)
R $8395 DE Base address of graphics
R $8395 HL On exit, points to the graphic to draw in screen.
C $8395,3 Put the frame number in #REGhl.
C $8398,1 Multiply by 32 to get a screen offset.
C $839D,1 Add the base address
C $839E,3 Get the last input data.
C $83A1,2 Ignore anything without the direction flags.
C $83A3,1 Remember the base address.
C $83A4,3 Put the position in #REGhl.
C $83A7,4 Convert this into an offset from the graphic table.
C $83AB,2 Combine this to point to the correct graphic and return.
u $83AD Unused
C $83AD,8
u $83B5 Unused
D $83B5 Used by the routine at #R$832F.
C $83B5,157
c $8452 Redraw Monty after jumping or falling
D $8452 Used by the routines at #R$8A63 and #R$8B1F.
R $8452 A Current Y co-ordinate
C $8452,4 Double the Y co-ordinate to get a word offset.
C $8456,7 Get the appropriate pointer to a screen offset and store it in #R$8499.
C $845D,2 Draw 2 rows.
C $845F,4 Put the actual screen address in #REGhl.
C $8463,12 Store the top 5 bits of the X co-ordinate in #REGde.
C $846F,1 Add this to get the actual screen address.
C $8470,5 Add a offset to give an address in the screen buffer at #R$D260.
C $8475,1 Get the graphic data.
C $8476,2 Set it.
C $8478,2 Move forward to the next cell.
C $847A,2 Get the graphic data.
C $847C,2 Set it.
C $847E,2 Move forward to the next cell.
C $8480,2 Get the graphic data.
C $8482,2 Set it.
C $8484,3 Get the screen offset.
C $8487,2 Move up an entry.
C $8489,3 Loop until both rows have been drawn. }å
b $848C Last address of Monty graphic
W $848C,2,2
g $848E Current frame to draw Monty
B $848E,1,1
g $848F Position off the ground (when jumping)
B $848F,1,1
u $8490 Unused
B $8490,2,2
w $8492 Pointer to current movement flags
D $8492 Initialised to #R$869C
W $8492,2,2
w $8494 Current pitch to use when making a jump sound
W $8494,2,2
w $8496 Default pitch to use when maing a jump sound
W $8496,2,2
g $8498 Time Monty has been jumping
B $8498,1,1
w $8499 Temporary storage for redrawing when jumping or falling
W $8499,2,2
g $849B Last input data when jumping or falling
B $849B,1,1
b $849C Monty up
D $849C #GRAFIXSTR($849C)(Monty_up)
B $849C,128,8
b $851C Monty up (alt)
D $851C #GRAFIXSTR($851C)(Monty_up_2)
B $851C,128,8
b $859C Monty left
D $859C #GRAFIXSTR($859C)(Monty_left)
B $859C,128,8
b $861C Monty right
D $861C #GRAFIXSTR($861C)(Monty_right)
B $861C,128,8
b $869C Movement table for jumping
D $869C Describes the relative direction Monty should move in during each phase of a jump.
N $869C The current position is stored in #R$8492.
B $869C,32,8
u $86BC Unused
D $86BC Used by the routine at #R$832F.
C $86BC,82
u $870E Unused
D $870E Used by the routine at #R$832F.
C $870E,15
u $871D Unused
D $871D Used by the routine at #R$870E.
C $871D,18
u $872F Unused
C $872F,31
u $874E Unused
B $874E,3,3
c $8751 Move all the nasties on the screen
D $8751 Used by the routines at #R$92DF and #R$940C.
C $8751,3 Point HL at the start of the nasty buffer. (#R$C596)
C $8754,2 Maximum of six characters on screen.
C $8757,1 Remember character count.
C $8758,3 Swap HL for IX so the buffer can be indexed.
C $875B,3 Get the type flag.
C $875E,1 If the type is not 0, skip forward.
N $8762 Move a simple nasty. This entry point is used by the routine at #R$8964.
C $8762,3 Put the current X co-ordinate in L
C $8765,3 Put the current Y co-ordinate in H
C $8768,3 Store this in #R$8962.
C $876B,3 Get the current direction.
C $876E,1 Is it down?
C $876F,2 No, so jump forward.
N $8771 Moving up.
C $8771,10 Increment the Y co-ordinate by the speed.
C $877B,6 Put the "up" graphic in #REGhl.
C $8781,4 Decrement the distance to travel.
C $8785,2 Skip the next code if it is not zero.
C $8787,6 Put the "down" graphic in #REGhl.
C $878D,7 Change the direction to "down".
C $8794,6 Set the distance to travel back to the default.
C $879A,9 Increment the animation frame, looping from 0 - 7.
C $87A3,3 Move forward to draw the nasty.
N $87A6 Moving down.
C $87A6,2 Is the direction up?
C $87A8,2 No, so jump forward.
C $87AA,10 Decrement the Y co-ordinate by the speed.
C $87B4,3 Get the distance to travel.
C $87B7,6 Put the "down" graphic in #REGhl.
C $87BD,1 Decrement the distance to travel.
C $87BE,2 Skip the next code if it is not zero.
C $87C0,6 Put the "up" graphic in #REGhl.
C $87C6,7 Change the direction to "up".
C $87CD,3 Set the distance to travel back to the default
C $87D0,2 Jump back to draw the nasty.
N $87D2 Moving left
C $87D2,2 Is the direction left?
C $87D4,2 No, so jump forward.
C $87D6,10 Decrement the X co-ordinate by the speed.
C $87E0,3 Get the distance to travel.
C $87E3,6 Put the "left" graphic in #REGhl.
C $87E9,1 Decrement the distance to travel.
C $87EA,2 Skip the next code if it is not zero.
C $87EC,6 Put the "right" graphic in #REGhl.
C $87F2,7 Change the direction to "right".
C $87F9,3 Set the distance to travel back to default.
C $87FC,2 Jump back to draw the nasty.
N $87FE Moving right
C $87FE,10 Increment the X co-ordinate by the speed.
C $8808,6 Put the "right" graphic in #REGhl.
C $880E,4 Decrement the distance to travel.
C $8812,2 Skip the next code if it is not zero.
C $8814,6 Put the "left" graphic in #REGhl.
C $881A,7 Change the direction to "left".
C $8821,3 Set the distance to travel back to the default.
C $8824,3 Jump back to draw the nasty.
N $8827 After updating the position, the nasty can be drawn.
C $8827,1 Swap #REGde and #REGhl over.
C $8828,3 Get the top 3 bits of animation to determine the frame to draw.
C $882B,3 Put this in #REGhl.
C $882E,5 Multiply by 32 to get a address of graphics.
C $8833,1 Add the basic address of the graphics to get the right one.
C $8834,3 Set the graphics to draw.
C $8837,9 Set the co-ordinates.
C $8840,3 Draw the graphic.
C $8843,4 Is the status 0?
C $8847,2 Move on if not.
N $8849 The nasty's attributes needs to be drawn.
C $8849,3 Get the old position.
C $884C,2 Use bright white to erase the old attribute.
C $8851,3 Draw these specific attributes.
C $8854,3 Draw the new attributes from the actual nasty data.
N $8857 All done with this nasty, move to the next. This entry point is used by the routine at #R$8964.
C $8857,7 Add #N$14 bytes to point to the next nasty data.
C $885E,1 Restore #REGbc.
C $885F,2 Loop back if there are more nasties to look at.
C $8861,2 Otherwise re-enable interrupts and return.
c $8866 Draw the nasty's attributes
D $8866 Used by the routine at #R$8751.
R $8866 IX Pointer to nasty data (#R$C596)
C $8866,3 Get the attribute.
C $8869,6 Get the current co-ordinates.
N $886F This entry point is used by the routine in #R$8751.
C $886F,5 Convert the X co-ordinate into an appropriate screen address.
C $8874,3 Draw the attribute, restoring the old background.
C $8877,6 Otherwise get the attribute and just draw it.
c $887D Draw a type 1 - 3 nasty
D $887D Used by the routine at #R$8751.
N $887D This code is unused as the game does not have any of them.
C $887D,2 Is the type 1?
C $887F,3 No, so move forward.
u $8882 Unused
C $8882,114
u $88F4 Unused
D $88F4 Used by the routine at #R$8882.
C $88F4,108
u $8960 Unused
W $8960,2,2
g $8962 X co-ordinate for current nasty being drawn
D $8962 Used by the routine in #R$8751.
B $8962,1,1
g $8963 Y co-ordinate for current nasty being drawn
D $8963 Used by the routine in #R$8751.
B $8963,1,1
c $8964 Update a type 2 (single direction) nasty
D $8964 Used by the routine at #R$887D.
R $8964 A Status flag for this nasty.
C $8964,2 Is the nasty invisible?
C $8966,3 Jump if so.
C $8969,4 Decrement the current distance.
C $896D,3 Jump if it is not zero.
N $8970 The nasty needs to be redrawn.
C $8970,3 Get the width or height.
C $8973,3 Set this to the current distance travelled.
C $8976,4 Make the nasty invisible in its current position.
C $897A,3 Get the index.
C $897D,13 Convert this to an offset to the nasty table.
C $898A,3 Set that this is a unidirectional nasty (should already be set).
C $898D,12 Multiply the distance covered by the speed to denote the offset to move back to the initial position and store it in #REGb.
C $8999,3 Get the current direction.
C $899C,1 Is the nasty moving up?
C $899D,2 Jump forward if not.
C $899F,10 Move the Y co-ordinate down by the appropriate distance and move forward.
C $89A9,2 Is the nasty moving up?
C $89AB,2 Jump forward if not.
C $89AD,10 Move the Y co-ordinate up by the appropriate distance and move forward.
C $89B7,2 Is the nasty moving left?
C $89B9,2 Jump forward if not.
C $89BB,10 Move the X co-ordinate right by the appropriate distance and move forward.
C $89C5,2 Is the nasty moving right?
C $89C7,3 Jump forward if not.
C $89CA,10 Move the X co-ordinate left by the appropriate distance and move forward.
c $89D4 Update Monty's position
D $89D4 Used by the routines at #R$940C and #R$CD41.
C $89D4,4 Point #REGix at the room flags (#R$8D52).
C $89D8,3 Get the room position (#R$5C7B and #R$5C7C).
C $89DB,3 Put this in the temporary store (#R$8D7D).
C $89E5,3 Get Monty's jump position.
C $89E8,1 Is it 0?
C $89E9,3 Move forward to handle jump movement if Monty is already in mid-air.
C $89EC,3 Get the movement flags?
C $89EF,2 Is Monty jumping?
C $89F1,2 Move forward if not.
C $89F3,2 Reset the jump flag.
C $89F5,3 Store this.
C $89F8,4 Set the initial position on the ground.
C $89FC,7 Set bit 1 to show Monty is jumping and move forward.
C $8A03,4 Is Monty on a ladder?
C $8A07,3 Move forward if so.
N $8A0A This entry point is used by the routine at #R$917A.
C $8A0A,3 Get the last input data.
C $8A0D,2 Remove the jump flag.
C $8A0F,2 Was there valid input?
C $8A11,3 Jump forward if not.
C $8A14,5 Does the input match the last input when jumping or falling?
C $8A19,2 Jump forward if not.
N $8A1B Act on moving left.
C $8A1B,2 Was 'left' pressed?
C $8A1D,2 Jump forward if not.
C $8A1F,8 Decrease the X co-ordinate by 2.
N $8A27 This entry point is used by the routine at #R$917A.
C $8A27,9 Cycle Monty's frame between 0-7.
C $8A30,2 Halve this to get the right frame offset.
C $8A32,3 Point #REGde at the start of Monty's graphic (#R$849C).
C $8A35,4 Is Monty on a ladder?
C $8A39,2 Jump forward if so.
C $8A3B,4 Point #REGde at the offset for Monty's graphic in this room.
C $8A3F,3 Select the right graphic for Monty.
C $8A42,3 Store this. (#R$848C).
C $8A45,3 Jump forward and check on room flags.
N $8A48 Act on moving right?
C $8A48,2 Was 'right' pressed?
C $8A4A,3 Jump forward if not to check for the room flags.
C $8A4D,8 Increase the X co-ordinate by 2.
C $8A55,3 Get Monty's frame counter.
C $8A58,3 Decrease by 1 and call the earlier routine to update the graphic.
N $8A5B This entry point is used by the routine at #R$917A.
C $8A5B,6 Copy the last input to a copy.
C $8A61,2 Jump back to draw Monty.
c $8A63 Make Monty jump
D $8A63 Used by the routine at #R$89D4.
C $8A63,3 Get the position off the ground.
C $8A66,3 Get the current pointer to the jump table.
C $8A6D,7 Decrease the X co-ordinate.
C $8A74,7 Add the scaling factor to the Y co-ordinate.
C $8A7B,4 Get the next pitch to beep at when jumping.
C $8A7F,2 Is the next direction moving upwards?
C $8A81,2 Jump forward if not.
C $8A83,7 Increase the pitch, so the jump effect increases while Monty is moving upwards.
C $8A8A,1 Otherwise decrease the pitch.
C $8A8B,4 Set the falling flag.
C $8A8F,4 Set the new pitch.
C $8A93,4 Move to the next position in the jump table.
C $8A97,3 Update Monty in this jump cycle.
C $8A9A,9 Increment the jump time until it reaches #N$1F, then reset back to 0.
C $8AA3,1 Has the jump finished?
C $8AA4,3 No, so check Monty's movement.
C $8AA7,3 Reset the position off the ground.
C $8AAA,3 Reset the distance fallen by.
C $8AAD,6 Reset the pointer to the movement table to #R$869C.
C $8AB3,6 Reset the jump beep pitch back to the default.
C $8AB9,4 Reset the jump flag.
C $8ABD,4 Reset the falling flag.
C $8AC1,3 Jump forward to set movement restrictions.
u $8AC4 Unused
C $8AC4,15
c $8AD3 Update Monty while jumping
D $8AD3 Used by the routine at #R$8A63.
C $8AD3,9 Move to the next animation frame 0 - 7.
C $8ADC,2 Halve this value to get the right graphic index.
C $8ADE,1 Remember #REGa.
C $8ADF,3 Point #REGde to the current jump table.
C $8AE2,3 Get the current jump height.
C $8AE5,4 Decrement by 1 and store it.
C $8AE9,1 Restore #REGa.
C $8AEA,3 Select the graphic to draw for Monty.
C $8AED,3 Point to this in #R$848C.
C $8AF0,3 Get the Y co-ordinate.
C $8AF3,5 Redraw Monty to the right.
C $8AF8,3 Get the Y co-ordinate.
C $8AFB,5 Redraw Monty to the left.
C $8B00,3 Get the pitch for the jump sound.
C $8B03,3 Length is always 1.
C $8B06,3 Call the ROM BEEP routine without disabling interrupts.
C $8B09,3 Move forward to check for movement restrictions.
c $8B0C See if Monty has walked off a ladder, and if so, set some flags
D $8B0C Used by the routine at #R$8B90.
C $8B0C,4 Is Monty jumping?
C $8B10,1 Return if so.
C $8B11,4 Can Monty climb?
C $8B15,1 Return if so.
C $8B16,4 Set that background objects can move.
C $8B1A,4 Set that Monty is in mid-air.
C $8B1E,1 Return.
c $8B1F Update Monty and act on room flags
D $8B1F Used by the routine at #R$89D4.
R $8B1F IX Pointer to room flags (#R$8D52).
C $8B1F,8 Take 2 off the current Y position.
C $8B27,4 Increment the distance fallen (#R$8D58).
C $8B2B,5 Put the old Y position in #REGa.
C $8B30,1 Increment the distance fallen.
C $8B31,3 Redraw Monty. Control continues to #R$8B34.
N $8B34 This entry point is used by the routines at #R$8A0A and #R$8A63.
C $8B34,3 Check Monty's current movement.
C $8B37,3 Get the current position in #REGhl.
C $8B3A,4 Is Monty jumping?
C $8B3E,2 Move forward if so.
C $8B40,6 Align Monty with a pixel boundary.
N $8B46 Check that Monty can move in all directions, and block movement that is not possible.
C $8B46,3 Get the temporary Y co-ordinate.
C $8B49,4 Can Monty move up?
C $8B4D,2 Jump if so.
C $8B4F,1 Is the current co-ordinate out of bounds?
C $8B50,2 Jump forward if not.
C $8B52,3 Re-align Monty on the appropriate boundary and jump forward.
C $8B55,4 Can Monty move down?
C $8B59,2 Jump if so.
C $8B5B,1 Is the current co-ordinate out of bounds?
C $8B5C,2 Jump forward if not.
C $8B5E,1 Re-align Monty on the appropriate boundary.
C $8B5F,3 Point #REGhl at Monty's co-ordinates.
C $8B62,3 Get the temporary X co-ordinate.
C $8B65,4 Can Monty move left?
C $8B69,2 Jump if so.
C $8B6B,1 Is the current co-ordinate out of bounds?
C $8B6C,2 Jump forward if not.
C $8B6E,3 Re-align Monty on the appropriate boundary and jump forward.
C $8B71,4 Can Monty move right?
C $8B75,2 Jump if so.
C $8B77,1 Is the current co-ordinate out of bounds?
C $8B78,2 Jump forward if not.
C $8B7A,1 Re-align Monty on the appropriate boundary.
N $8B7B Redraw Monty in the new screen position.
C $8B7B,3 Get the screen position.
C $8B7E,3 Set this for the graphic to print.
C $8B81,5 Height is 4.
C $8B86,3 Get the pointer to the sprite data.
C $8B89,3 Set this to draw.
C $8B8C,4 Draw the graphic and return.
c $8B90 Determine where Monty can move to
D $8B90 Used by the routine at #R$8B34.
C $8B90,3 Check for collision.
C $8B93,4 Point #REGix at the room flags (#R$8D52).
C $8B97,4 Point #REGiy at the direction flags (#R$8D54).
C $8B9B,8 Clear all bits except 2 and 4 on the room flags.
N $8BA3 Check the movement flags.
C $8BA3,4 Can Monty move up?
C $8BA7,2 Jump forward if so.
C $8BA9,4 Set bit 7 of the room flags - Monty can't move up.
C $8BAD,4 Can Monty move down?
C $8BB1,2 Jump forward if so.
C $8BB3,4 Set bit 6 of the room flags - Monty can't move down.
C $8BB7,4 Can Monty move left?
C $8BBB,2 Jump forward if so.
C $8BBD,4 Set bit 5 of the room flags - Monty can't move left.
C $8BC1,4 Can Monty move right?
C $8BC5,2 Jump forward if so.
C $8BC7,4 Set bit 4 of the room flags - Monty can't move right.
N $8BCB Check to see if there is a nasty in the proximity.
C $8BCB,2 Is a nasty to the right of Monty?
C $8BCD,3 If so, Monty dies.
C $8BD0,3 Is a nasty to the left of Monty?
C $8BD3,4 If so, Monty dies.
C $8BD7,3 Is a nasty below Monty?
C $8BDA,4 If so, Monty dies.
C $8BDE,3 Is a nasty above Monty?
C $8BE1,4 If so, Monty dies.
N $8BE5 See if Monty can climb here.
C $8BE5,2 Remember #REGiy.
C $8BE7,3 Can Monty climb here?
C $8BEA,2 Jump forward if not.
C $8BEC,4 Set bit 2 of the room flags - Monty can climb.
C $8BF0,2 Restore #REGiy.
N $8BF2 See if Monty has collided with non-empty space.
C $8BF4,5 Get the bottom 3 bits of the X co-ordinate.
C $8BF9,2 Move forward if they are zero.
C $8BFB,2 Scan 3 rows.
C $8BFD,3 Get the current screen address in #REGhl.
C $8C00,2 Set #REGc as no bits found.
C $8C02,1 Get the next data from screen.
C $8C03,1 OR it against #REGc to retain any bits found.
C $8C04,1 Store this result back in #REGc.
C $8C05,1 Move to the next column.
C $8C06,2 Loop back if there are more columns to look at.
C $8C08,2 Was anything found at this screen address?
C $8C0A,3 If not, set various flags.
C $8C0D,4 Is Monty in mid-air?
C $8C11,1 Return if so. Monty has reached the ground after falling.
C $8C12,4 Reset the mid-air flag.
C $8C16,4 Enable background objects to move.
C $8C1A,4 Set that Monty is not jumping.
C $8C1E,3 Get the height fallen.
C $8C21,2 Is it above 20?
C $8C23,3 Yes, Monty has fallen too far, so he's dead.
C $8C26,1 Set #REGa to 0 to reset some flags.
C $8C27,3 Reset the height fallen.
C $8C2A,3 Reset the position jumped off ground.
C $8C2D,3 Reset the time being jumped.
C $8C30,6 Reset the pointer to the movement table back to #R$869C.
C $8C36,6 Reset the pitch to sound when jumping back to the default.
C $8C3C,1 Return.
c $8C3D Check what attributes are around Monty
D $8C3D Used by the routine at #R$8B90.
C $8C3D,4 Point #REGiy at the movement table at #R$8D54.
C $8C43,3 Get the Y co-ordinate (#R$5C7C).
C $8C46,1 Remember this in #REGc.
C $8C47,3 Invert the bottom 6 bits.
C $8C4A,1 Remember this.
C $8C4B,2 Get the lowest 3 bits.
C $8C4D,2 Jump forward if none are set.
C $8C4F,2 Otherwise default to 3.
C $8C51,4 Set the Y offset (#R$8D5B).
C $8C55,2 Default to 2.
C $8C57,3 Get the X co-ordinate (#R$5C7C);
C $8C5A,2 Get the lowest 3 bits.
C $8C5C,2 Jump foward if none are set.
C $8C5E,2 Otherwise default to 3.
C $8C60,4 Set the X offset (#R$8D5C).
C $8C64,1 Restore Y co-ordinate.
C $8C65,8 Shift the top 5 bits down and store in the Y co-ordinate (#R$8D5E)
C $8C6D,3 Get the X co-ordinate.
C $8C70,8 Shift the top 5 bits down and store in the X co-ordinate  (#R$8D5D)
C $8C78,3 Get the Y co-ordinate.
C $8C7B,8 Scale it up to a screen address.
C $8C83,3 Get the X co-ordinate.
C $8C86,4 Add this to get the desired offset.
C $8C8A,4 Add the base address to get an attribute on screen.
C $8C8E,3 Store this attribute.
C $8C91,3 Get the X co-ordinate for the offset.
C $8C94,1 Store this in #REGb.
C $8C95,4 Default to no movement in this direction.
C $8C99,2 Remember #REGiy.
C $8C9B,3 Check the movement tables across.
C $8C9E,14 Move back a row.
C $8CAC,3 Get the X co-ordinate for the offset.
C $8CAF,1 Store this in #REGb.
C $8CB0,2 Move to the next direction.
C $8CB2,4 Default to no movement.
C $8CB6,3 Check movement tables across.
C $8CC0,2 Move to the next direction.
C $8CC2,4 Default to no movement.
C $8CC6,3 Check movement tables down.
C $8CD8,2 Move to the next direction.
C $8CDA,4 Default to no movement.
C $8CDE,3 Check movement tables down.
C $8CE1,2 Restore #REGiy to the base position.
C $8CE3,43 If any direction flag was set to 3, set it to 0 instead.
c $8D0F Update the movement tables (across)
D $8D0F Used by the routine at #R$8C3D.
R $8D0F HL Attribute in the current position
R $8D0F IY Pointer to movement table  (#R$8D54)
R $8D0F B Number of columns
C $8D0F,3 Get the list of attributes.
C $8D12,1 Remember #REGbc
C $8D13,2 Count four types.
C $8D15,3 Is the current attribute this one?
C $8D18,2 If so, found the attribute we want.
C $8D1A,3 Increment the type of attribute looked for.
C $8D1D,1 Move to the next attribute.
C $8D1E,2 Repeat for the next four types.
C $8D20,1 Restore #REGhl to the start of the table.
C $8D21,1 Restore #REGbc.
C $8D22,4 Set to no attribute found.
C $8D26,1 Move forward a column.
C $8D27,2 Repeat until all columns have been checked.
C $8D29,5 Mark this as empty space and return.
c $8D2E Update the movement tables (down)
D $8D2E Used by the routine at #R$8C3D.
R $8D2E HL Attribute in the current position
R $8D2E IY Pointer to movement table  (#R$8D54)
R $8D2E B Number of rows
C $8D2E,3 Point to the start of the movement attributes table (#R$C51A).
C $8D31,1 Remember #REGbc.
C $8D32,2 Count four types.
C $8D34,3 Is the current attribute this one?
C $8D37,2 If so, found the attribute we want.
C $8D39,3 Increment the type of attribute looked for.
C $8D3C,1 Move to the next attribute.
C $8D3D,2 Repeat for the next four types.
C $8D3F,1 Restore #REGhl to the start of the table.
C $8D40,1 Restore #REGbc.
C $8D41,4 Initialise to no movement.
C $8D45,4 Move forward a row.
C $8D49,2 Repeat until all rows have been checked.
C $8D4B,5 Mark this as empty space and return. } We've found a matching attribute and have set it. This entry point is used by the routine at #R$8D0F.
C $8D50,2 Tidy up the stack and return.
g $8D52 Room flags
D $8D52 #TABLE( center, default ) { =h bit | =h value } { 0 | } { 1 | Monty is jumping } { 2 | Monty can climb } { 3 | Monty has picked up the non-coal item } { 4 | If reset, Monty can move right } { 5 | If reset, Monty can move left } { 6 | If reset, Monty can move down } { 7 | If reset, Monty can move up } TABLE#
B $8D52,1,1
g $8D53 Game flags
D $8D53 #TABLE( center, default ) { =h bit | =h value } { 0 | If reset, background objects can move } { 1 | If set, Monty is in mid-air } { 2 | } { 3 | } { 4 | } { 5 | } { 6 | } { 7 | } TABLE#
B $8D53,1,1
g $8D54 Movement flags
D $8D54 These four bytes describe what movement can be made up, down, left and right, with the following values: #TABLE( center, default ) { =h value | =h description } { 0 | Movement is blocked } { 1 | Fire (fatal) } { 2 | Ladder (can be climbed) } { 3 | Not used } { 4 | Empty space (can be walked through) } TABLE#
N $8D54 Used by the routines at #R$8B90, #R$8C3D, #R$8D0F and #R$8D2E.
B $8D54,4,4
g $8D58 Distance fallen by
B $8D58,1,1
g $8D59 Current attribute address of Monty
W $8D59,2,2
g $8D5B Y screen offset for attribute
B $8D5B,1,1
g $8D5C X screen offset for attribute
B $8D5C,1,1
g $8D5D X co-ordinate on screen
B $8D5D,1,1
g $8D5E Y co-ordinate on screen
B $8D5E,1,1
c $8D5F Return the current screen address
D $8D5F Used by the routine at #R$8B90.
R $8D5F HL On exit, holds the screen address for the current location.
C $8D5F,3 Get the Y co-ordinate.
C $8D62,10 Convert it to an offset in the screen address buffer.
C $8D6C,4 Put the screen address in #REGhl.
C $8D70,2 Initialise D to add the X co-ordinate.
C $8D72,3 Get the X co-ordinate.
C $8D75,6 Convert to a screen offset and store it in E.
C $8D7B,2 Put the screen address in HL and return.
g $8D7D Temp store for screen position
B $8D7D,2,2
c $8D7F Play death tune
D $8D7F Used by the routine at #R$946E.
C $8D7F,3 #R$FFE0 is the "dead Monty" graphic.
C $8D82,3 Store this.
C $8D85,3 Get the current position.
C $8D88,3 Store this as the place to print.
C $8D8B,3 Print the graphic.
C $8D94,3 Copy the screen to the graphic buffer.
C $8D97,8 Set Monty as being in mid-air.
C $8D9F,1 Enable interrupts
C $8DA0,4 Load #REGix with the start of the death tune.
C $8DA4,2 Remember this, as the ROM routine overwrites it.
C $8DA6,6 Put the length in #REGde.
C $8DAC,6 Put the frequency in #REGhl.
C $8DB2,3 BEEP without enabling interrupts.
C $8DB5,4 Pause between notes.
C $8DB9,2 Restore IX.
C $8DBB,3 Get the current frame number.
C $8DBE,2 Is it #$FF, meaning the angel has gone?
C $8DC0,1 Return if so.
C $8DC1,5 Move forward to the next bit of tune data.
C $8DC6,4 Is the length 0?
C $8DCA,2 If not, move back to play more of the tune.
C $8DCC,1 Otherwise return.
c $8DCD Move a crusher
D $8DCD Used by the routine at #R$8F9F.
R $8DCD IX Pointer to room flags (#R$8D53)
C $8DCD,4 Point #REGiy at the crusher data (#R$C527).
C $8DD1,6 Are the X and Y co-ordinates both zero?
C $8DD7,1 If so, there are no crushers here, so return.
C $8DD8,4 Is it time to fire a crusher?
C $8DDC,2 Jump if it is.
C $8DDE,4 Otherwise decrement the time to fire and return.
N $8DE2 The crusher should now be activated.
C $8DE2,4 Is the crusher descending?
C $8DE6,3 See if Monty is underneath one and if so, kill him.
C $8DE9,4 Is the crusher descending?
C $8DED,2 Jump forward if not.
N $8DEF The crusher is ascending.
C $8DEF,6 Move down two rows.
C $8DF5,6 Has the Y co-ordinate reached the top?
C $8DFB,2 Jump forward if it hasn't.
N $8DFD The crusher has reached the top.
C $8DFD,4 Signal that the crusher is descending.
C $8E01,3 Get a pseudo-random number.
C $8E04,3 Ensure it is a number between 1 and #N$80.
C $8E07,5 Store it as the next time to fire and return.
C $8E0C,4 Redraw the crusher and return.
N $8E10 The crusher is descending.
C $8E10,6 Move down two rows.
C $8E16,6 Has the Y co-ordinate reached the bottom?
C $8E1C,2 Jump back if it hasn't.
N $8E1E The crusher has reached the bottom.
C $8E1E,4 Signal that the crusher is ascending.
C $8E22,3 Set the length.
C $8E25,3 Set the frequency.
C $8E28,3 Call the ROM beep routine without enabling interrupts.
> $8E7A ; Draw a crusher
> $8E7A ;
> $8E7A ; Used by the routine at #R$8DCD
> $8E7A *$8E2C LD IY,$C527     ; Point #REGiy at the crusher data.
> $8E7A  $8E30 LD L,(IY+$01)   ; { Put the y co-ordinate in #REGhl.
> $8E7A  $8E33 LD H,$00        ; }
> $8E7A  $8E35 ADD HL,HL       ; Double this to get a word offset.
> $8E7A  $8E36 LD DE,$EA60     ; { Add the base address of the screen address buffer (#R$EA60).
> $8E7A  $8E39 ADD HL,DE       ; }
> $8E7A  $8E3A PUSH HL         ; { Put the actual address in IX.
> $8E7A  $8E3B POP IX          ; }
> $8E7A  $8E3D LD B,$09        ; 9 rows to update.
> $8E7A  $8E3F BIT 0,(IY+$04)  ; Is the crusher ascending?
> $8E7A  $8E43 JR Z,$8E4B      ; Jump forward if it is.
> $8E7A  $8E45 LD IY,$8E7A     ; { Point #REGiy at the crusher graphic.
> $8E7A  $8E49 JR $8E4F        ; }
> $8E7A *$8E4B LD IY,$8E80     ; Point #REGiy at the second line of the crusher graphic.
> $8E7A *$8E4F PUSH BC         ; Remember #REGbc.
> $8E7A  $8E50 LD E,(IX+$00)   ; { Put the screen address in #REGde.
> $8E7A  $8E53 LD D,(IX+$01)   ; }
> $8E7A  $8E56 DEC IX          ; { Move up a row.
> $8E7A  $8E58 DEC IX          ; }
> $8E7A  $8E5A LD H,$00        ; { Put the x co-ordinate in #REGhl.
> $8E7A  $8E5C LD A,($C527)    ;
> $8E7A  $8E5F LD L,A          ; }
> $8E7A  $8E60 ADD HL,DE       ; Add this to the base offset of the screen address buffer.
> $8E7A  $8E61 EX DE,HL        ; Swap #REGde and #REGhl.
> $8E7A  $8E62 LD HL,$9260     ; { Add the offset to the screen address to get an offset
> $8E7A  $8E65 ADD HL,DE       ; on the screen buffer from #R$D260. }
> $8E7A  $8E66 LD B,$03        ; 3 columns to update.
> $8E7A *$8E68 LD A,(IY+$00)   ; Get the graphic.
> $8E7A  $8E6B LD (HL),A       ; { Store it on the screen and the buffer.
> $8E7A  $8E6C LD (DE),A       ; }
> $8E7A  $8E6D INC IY          ; { Move forward.
> $8E7A  $8E6F INC HL          ;
> $8E7A  $8E70 INC DE          ; }
> $8E7A  $8E71 DJNZ $8E68      ; Loop until all columns on this row are drawn.
> $8E7A  $8E73 POP BC          ; Restore #REGbc to get the number of rows left.
> $8E7A  $8E74 DJNZ $8E4F      ; Loop until all the rows are drawn.
> $8E7A  $8E76 CALL $8E9B      ; Set the attribute for the crusher.
> $8E7A  $8E79 RET             ;
b $8E7A Crusher graphic
D $8E7A #UDGARRAY3,7,2,3($8E7A-$8E7C)(crusher)
B $8E7A,32,8
u $8E9A
B $8E9A,1,1
c $8E9B Set the attributes for a crusher.
D $8E9B Used by the routine at #R$8DCD.
C $8E9B,7 Get the Y co-ordinate.
C $8EA2,16 Convert this into a screen address and put it in #REGhl.
C $8EB2,5 Multiply by 16 to get an appropriate offset in the attribute buffer.
C $8EB7,4 Add the base offset of the attribute buffer.
C $8EBB,5 Put the X co-ordinate in #REGde.
C $8EC0,1 Add this to get the correct attribute address.
C $8EC1,4 Is the crusher ascending?
C $8EC5,2 Move forward if so.
C $8EC7,8 Turn on the brightness bit for the three colums in this row.
C $8ECF,1 Return.
N $8ED0 The crusher is ascending, turn off the brightness.
C $8ED0,4 Move up a row.
C $8ED4,8 Turn off the brightness bits.
C $8EDC,1 Return.
c $8EDD Animate Monty's angel as he has died
D $8EDD Used by the routine at #R$8F9F.
C $8EDD,9 Increase the frame number between 0 and 3.
C $8EE6,1 Is the frame zero?
C $8EE7,3 Exit if so.
C $8EEA,3 Get the current Y co-ordinate.
C $8EED,2 Move up two rows.
C $8EEF,3 Has the angel reached the top of the screen?
C $8EF2,2 Move forward if not.
N $8EF4 The angel has now reached the top of the screen.
C $8EF4,3 #R$7780 is the empty graphic.
C $8EF7,3 Store the graphic to draw.
C $8EFA,6 Get the player's position.
C $8F00,3 Draw (erase) the graphic.
C $8F03,3 Get the game flags.
C $8F06,2 Reset flag 1 (Monty in mid-air).
C $8F08,2 Set flag 0 (nasties can move)
C $8F0A,5 Set the frame to #N$FF, denoting "not used"
C $8F0F,3 Exit to restore all registers.
N $8F12 The angel needs redrawing.
C $8F12,12 Move the current position up a row.
C $8F1E,4 Move back to get an appropriate screen address.
C $8F22,3 Set this as the graphic to print.
C $8F25,6 Set the current position as the position to draw.
C $8F2B,3 Draw the graphic.
C $8F2E,3 Exit to restore all registers.
c $8F31 Update the moving platforms
D $8F31 Used by the routine at #R$F7C7.
C $8F31,4 Set #REGiy to the moving platforms data (#R$C622).
C $8F35,4 Are the platforms moving outward?
C $8F39,2 Jump if so.
N $8F3B The platforms are moving inward.
C $8F3B,6 Are the X and Y co-ordinates both zero?
C $8F41,1 If so, there are no moving platforms here, so return.
C $8F42,3 This is the code for NOP; OR (HL)
C $8F45,3 Set this to the drawing routine at #R$90A3 to draw inwards.
C $8F48,6 Has the platform reached the middle?
C $8F4E,2 Jump forward if not.
C $8F50,8 Swap the direction from inward to outward.
C $8F58,6 Move the left platform in and the right platform out.
C $8F5E,2 Jump to move outward.
N $8F60 The platforms are moving inward and have not reached the edge.
C $8F60,3 Move the left platform to the right
C $8F63,3 Draw the left platform.
C $8F66,3 Move the right platform to the left
C $8F69,3 Draw the right platform.
C $8F6C,1 Add done.
N $8F6D The platforms are moving outward.
C $8F6D,6 Are the X and Y co-ordinates both zero?
C $8F73,1 If so, there are no moving platforms here, so return.
C $8F74,3 This is the code for LD A,C; CPL
C $8F77,3 Set this to the drawing routine at #R$90A3 to draw outwards.
C $8F7A,6 Has the platform reached the left edge?
C $8F80,2 No, so move forward.
C $8F82,8 Swap the direction from outward to inward.
C $8F8A,6 Move the left platform out and the right platform in.
C $8F90,2 Jump to move inward.
N $8F92 The platforms are moving outward and have not reached the edge.
C $8F92,3 Shift the left platform out.
C $8F95,3 Draw it.
C $8F98,3 Shift the right platform in.
C $8F9B,3 Draw it.
c $8F9F IM2 routine for main game
D $8F9F Used by the routine at #R$5B5B.
N $8F9F Animate all opening / closing platforms, crushers, water, and Monty dying (if appropriate)
C $8F9F,8 Save all registers, as this was called by an interrupt.
C $8FA7,5 Is this room #N$11?
C $8FAC,3 If so, animate the shower.
C $8FAF,4 Point #REGix to game flags.
C $8FB3,4 Can animation happen?
C $8FB7,3 Jump forward if not.
C $8FBA,4 Is Monty still alive?
C $8FBE,3 No, so animate the angel.
C $8FC1,3 Perform background actions.
C $8FC4,3 Animate all moving objects.
N $8FC7 Some rooms have water in them which needs animating.
C $8FC7,5 Is this room #N$08?
C $8FCC,2 No, so jump forward.
N $8FCE Animate the water in room #N$08.
C $8FCE,3 Get the screen offset for the water's y co-ordinate in room #N$08.
C $8FD1,4 Add the x co-ordinate.
C $8FD5,2 Width is 5.
C $8FD7,5 Animate the water and skip the rest of this routine.
N $8FDC Animate the water in room #N$09.
C $8FDC,2 Is this room #N$09?
C $8FDE,2 No, so jump forward.
C $8FE0,3 Get the screen offset for the water's y co-ordinate in room #N$09.
C $8FE3,4 Add the x co-ordinate.
C $8FE7,2 Width is #N$12.
C $8FE9,5 Animate the water and skip the rest of this routine.
N $8FEE Animate the water in room #N$0A.
C $8FEE,2 Is this room #N$0A?
C $8FF0,2 No, so jump forward.
C $8FF2,3 Get the screen offset for the water's y co-ordinate in room #N$0A.
C $8FF5,2 Width is #N$14.
C $8FF7,5 Animate the water and skip the rest of this routine.
N $8FFC Animate the water in room #N$0B.
C $8FFC,2 Is this room #N$0B?
C $8FFE,2 No, so jump foward.
C $9000,3 Get the screen offset for the first water's y co-ordinate in room #N$0B.
C $9003,3 Set the x co-ordinate.
C $9006,2 Width is 3.
C $9008,1 Add the x co-ordinate.
C $9009,3 Animate the water.
C $900C,3 Get the screen offset for the second water's y co-ordinate.
C $900F,4 Add the x co-ordinate.
C $9013,2 Width is 6.
C $9015,3 Animate the water.
C $9018,3 Get the screen offset for the third water's y co-ordinate.
C $901B,4 Add the x co-ordinate.
C $901F,2 Width is 3.
C $9021,3 Animate the water.
C $9024,3 Get the screen offset for the fourth water's y co-ordinate.
C $9027,4 Add the x co-ordinate.
C $902B,2 Width is 2.
C $902D,3 Animate the water.
C $9030,3 Get the screen offset for the fifth water's y co-ordinate.
C $9033,4 Add the x co-ordinate.
C $9037,2 Width is 2.
C $9039,3 Animate the water.
C $903C,3 Get the screen offset for the sixth water's y co-ordinate.
C $903F,4 Add the x co-ordinate.
C $9043,2 Width is 3.
C $9045,3 Animate the water.
N $9048 This entry point is used by the routine at #R$8EDD, and is a common exit point.
C $9048,8 Restore all registers.
C $9050,2 Re-enable interrupts and return.
c $9052 Update one side of a moving platform
D $9052 Used by the routine at #R$8F31.
N $9052 The routine is called at #R$9052 for the left side, and #R$9058 for the right side
C $9052,6 Point to the left hand buffer and jump forward.
C $9058,4 Point to the right hand buffer.
N $905C This entry point is used by the routine at #R$8F31.
C $905C,6 Are the x and y co-ordinates both zero?
C $9062,1 If so, there are no moving platforms here, so return.
C $9063,5 Put the y co-ordinate in #REGhl.
C $9068,1 Double it to get a word entry in the screen offset buffer.
C $9069,4 Add the base pointer to the screen offsets (#R$EA60).
C $906D,4 Put the screen address in #REGhl.
C $9071,3 Get the x co-ordinate.
C $9074,5 Extract the top 5 bits as a value.
C $9079,3 Put this in #REGde.
C $907C,1 Add to get the actual screen address in #REGhl.
C $907D,1 Remember this.
C $907E,5 Get the bottom 3 bits of the x co-ordinate
C $9083,4 Shift it and store the result in #REGc.
C $9087,2 3 rows to draw.
C $9089,1 Restore screen address.
C $908A,4 Add the offset to get a position in the screen buffer at #R$D260.
C $908E,3 Update a byte in the screen buffer.
C $9091,1 Swap #REGhl to the actual screen address.
C $9092,3 Update again; this ensures both the screen and the copy are in sync.
C $9095,1 Put #REGhl and #REGde the right way round again.
C $9096,2 Move to the next row on screen.
C $9098,3 Loop round until all the rows are drawn.
> $90A3 ; Shift a moving platform byte (?)
> $90A3 ;
> $90A3 ; Used by the routine at #R$9052.
> $90A3 ;
> $90A3 ; A Current bits
> $90A3 *$909B INC A         ; { Set #REGb to loop over this value.
> $90A3  $909C LD B,A        ; }
> $90A3  $909D XOR A         ; Clear #REGa.
> $90A3  $909E SCF           ; Set the first shifted in bit to be 1.
> $90A3 *$909F RRA           ; { Shift the bits the required number of times.
> $90A3  $90A0 DJNZ $909F    ; }
> $90A3  $90A2 RET           ; Otherwise return.
c $90A3 Update one byte of a moving platform
D $90A3 Used by the routine at #R$9052.
R $90A3 HL Address to update
R $90A3 C New bits to include
C $90A3,1 Get the new bits.
C $90A4,2 This code is changed to LD A,C ; CPL by the routine at #R$8F6D, which changes drawing inward to drawing outward.
C $90A6,2 Set the new value and return.
c $90A8 Animate water
D $90A8 Used by the routines at #R$8F9F and #R$CDEF.
R $90A8 HL Starting screen address of the water
R $90A8 C Width of the water in UDGs
C $90A8,1 Copy is from 0 to width - 1.
C $90A9,2 3 rows to draw.
C $90AB,1 Remember this.
C $90AC,2 Set #REGb to 0 so that #REGbc can be used as a length.
C $90AE,1 Remember the screen address.
C $90AF,1 Get the next byte.
C $90B0,2 Shift all bytes left and store the new value.
C $90B2,5 Copy everything 1 byte forward.
C $90B7,1 Restore the screen address.
C $90B8,1 Move to next row.
C $90B9,1 Restore count of rows.
C $90BA,2 Loop if there is more to do.
C $90BC,1 Otherwise return.
c $90BD Animate the shower water in room #N$11
D $90BD Used by the routine at #R$8F9F.
C $90BD,3 Get the graphic index for the shower head (#R$912B).
C $90C0,4 Does it match the index for this room?
C $90C4,2 No, so set it.
C $90C6,2 Return if it is zero.
C $90C8,3 Put the last two bytes of the graphic in #REGhl.
C $90CB,1 Store it.
C $90CC,11 Shift the other bytes down.
C $90D7,4 Restore the last byte and put it on the front.
C $90DB,4 Point to the first graphic frame.
C $90DF,3 Location on screen.
C $90E2,3 Location in the screen buffer.
C $90E5,3 Draw it.
C $90E8,3 Location on screen.
C $90EB,3 Location in the screen buffer.
C $90EE,4 Pointer to the second graphic frame.
N $90F2 Draw the next graphic. This entry point is used by the routine at #R$912C.
C $90F2,2 8 rows to draw.
C $90F4,3 Get the graphic.
C $90F7,1 Put the graphic on screen.
C $90F8,1 Put the graphic in the screen buffer.
C $90F9,2 Move to the next column.
C $90FB,3 Get the graphic.
C $90FE,1 Put the graphic on screen.
C $90FF,1 Put the graphic in the screen buffer.
C $9100,4 Move to the next row, and back to the first column.
C $9104,4 Move forward to the next graphic.
C $9108,3 Loop until all the rows are drawn.
b $910B Graphic buffer for shower water in room #N$11
D $910B #UDGARRAY2,7,2,2($910B-$910C;$911B-$911C)(shower)
B $910B,32,8
b $912B Graphic index for shower in room #N$11
B $912B,1,1
c $912C Animate the shower water in room #N$11 (2)
D $912C Used by the routine at #R$90BD.
R $912C HL Graphic index for the shower head
R $912C A ID to set.
C $912C,1 Set the value
N $912D Draw the top row.
C $912D,4 #R$7780 is the empty graphic.
C $9131,3 Location on screen.
C $9134,3 Location in the screen buffer.
C $9137,3 Draw the graphic.
N $913A Draw the bottom row.
C $913A,4 #R$7780 is the empty graphic.
C $913E,3 Location on screen.
C $9141,3 Location in the screen buffer.
C $9144,3 Draw the graphic.
N $9147 Both rows done.
C $9147,1 Return.
c $9148 Check that a crusher has killed Monty
D $9148 This is done by checking the area three lines under the crusher is empty
D $9148 If not, Monty must be underneath it, and is crushed!
C $9148,3 Get the crusher Y co-ordinate.
C $914B,6 Convert it to a screen offset.
C $9151,4 Add to the screen offset buffer #R$EA60 to get the right screen position.
C $9155,4 Put the screen position in #REGhl.
C $9159,6 Add the X co-ordinate to get the correct screen address.
C $915F,5 Convert the screen offset to an offset in the buffer at #R$D260.
C $9164,2 Current line.
C $9166,2 Number of lines.
C $9168,1 Get the line from the screen.
C $9169,2 Check for any bits on screen found. and copy from the previous line.
C $916B,1 Store next line data.
C $916C,2 Move to next column on screen.
C $916E,2 Loop back if there is more to do.
C $9170,2 Were any bits set?
C $9172,1 Return if not.
C $9173,4 Otherwise, something was in the way of the crusher, which must have been Monty, so kill him.
g $9177 Offset for Monty's angel as it is animated
W $9177,2,2
g $9179 Frame number for the angel (0-3)
B $9179,1,1
c $917A Make Monty climb a ladder
D $917A Used by the routine at #R$89D4.
C $917A,4 Put the last input data from climbing or falling (#R$849B) in #REGb.
C $917E,4 Compare this against the actual last input data.
C $9182,3 Jump back if there isn't a match.
C $9185,3 Point #REGhl at the current Y co-ordinate (#R$5C7C).
C $9188,4 Was the direction up?
C $918C,2 Jump back if not.
N $918E Monty is moving up the ladder.
C $918E,2 Increase the Y co-ordinate by 2.
C $9190,3 Jump back to update Monty's position.
N $9193 Monty is not moving up the ladder, is he moving down?
C $9193,2 Was the direction down?
C $9195,3 Jump back if not.
C $9198,2 Decrease the Y co-ordinate by 2.
C $919A,3 Jump back to update Monty's position.
c $919D Add value of coal to the current score
D $919D Used by the routine at #R$935C.
R $919D A Score to add
C $919D,1 Start a loop based on the score value.
C $919E,2 Flag $0A as the digit requiring decimal adjustment.
C $91A0,4 Point to the score (#R$9217).
C $91A4,8 Increment the score, but jump forward if it reaches #N$A.
C $91AC,2 Otherwise loop back round and add more.
C $91AE,4 Print the score and return.
N $91B2 The score needs adjusting for decimal.
C $91B2,7 Carry the 10s.
C $91B9,5 Continue if there is no more overflow.
C $91BE,7 Carry the 100s.
C $91C5,5 Continue if there is no more overflow.
C $91CA,7 Carry the 1000s.
C $91D1,5 Continue if there is no more overflow.
C $91D6,7 Carry the 10,000s.
C $91DD,5 Continue if there is no more overflow.
C $91E2,6 The maximum possible score is 99,999 - overflow to 0 and continue.
c $91E8 Print the score
D $91E8 Used by the routines at #R$919D, #R$9551, #R$CAD1, #R$CD41 and #R$F817.
C $91E8,2 Print 5 characters
C $91EA,4 Point IX to the score digits at #R$9217.
C $91EE,4 Point IY to the end of the score text at #R$9223.
C $91F2,3 Get the next digit.
C $91F5,2 Convert it to a character in the character set (#R$813B).
C $91F7,3 Store the digit in the printable text.
C $91FA,2 Move back a character.
C $91FC,2 Move forward a digit.
C $91FE,2 Loop until all 5 characters are done.
C $9200,4 Set bit 7 on the last character to mark the end of the string.
C $9204,4 Point IX at the score position data.
C $9208,4 Point IY at the text to print.
C $920C,2 Print one line.
C $920E,1 Ensure the stack is correct for the printing routine.
C $920F,3 Print the string.
b $9212 Score position data
D $9212 Format is x position, y position, attribute, depth, attribute offset Used by the routine in #R$91E8
B $9212,5,5
g $9217 Current score (in reverse digits)
B $9217,5,5
b $921C "SCORE: "
D $921C Used by the routine in #R$91E8
B $921C,7,7
g $9223 Current score (in text).
D $9223 Used by the routine in #R$91E8
B $9223,5,5
c $9228 Check to see if Monty has collided with a nasty
D $9228 Used by the routine at #R$9298.
R $9228 H Holds the Y co-ordinate
R $9228 L Holds the X co-ordinate
R $9228 F On exit, resets the zero flag if there was a collision
C $9228,1 Get the X co-ordinate.
C $9229,11 Convert it to a frame number and put it in #REGb.
C $9234,1 Get the X co-ordinate.
C $9235,5 Convert it to a screen offset.
C $923A,4 Put the Y co-ordinate in #REGhl.
C $923E,4 Add the base offset for the screen address table (#$EA60).
C $9242,1 Remember the X co-ordinate.
C $9243,4 Get the actual screen address and put it in #REGhl.
C $9247,1 Restore the X co-ordinate.
C $9248,4 Add this to the existing screen address to get an actual address.
C $924C,5 Add an offset to get an address in the screen buffer at #R$D260.
C $9251,1 Get the byte there.
C $9252,2 Test the bits against the X co-ordinate and store this in #REGc.
C $9254,1 Get the byte on screen.
C $9255,2 Test the bits on screen against that in the buffer, which will reset the zero flag if they don't match.
C $9257,1 Return.
c $9258 See if Monty is touching some coal and can collect it
D $9258 Used by the routine at #R$935C.
R $9258 H Current Y position
R $9258 L Current X position
R $9258 HL On exit, returns the address in the coal attribute buffer that was checked.
R $9258 F Resets the zero flag if there is coal here, otherwise sets it.
C $9258,7 Divide the X co-ordinate by 8 and put it in #REGc.
C $925F,7 Divide the Y co-ordinate by 8 and put it in #REGb.
C $9266,5 Flip the Y co-ordinate to be the right way round for a screen address.
C $926B,8 Convert this into a screen offset.
C $9273,4 Add the column to the screen offset.
C $9277,4 Add the base position of the coal attributes (#R$CF54).
C $927B,3 Reset the zero flag if there is coal at this position and return.
c $927E Check if Monty is touching a (non-coal) collectable item, and if so, pick it up
D $927E Used by the routine at #R$940C.
C $927E,3 Get the current position in #REGhl.
C $9281,3 Get the collectable item flag (#R$C526).
C $9284,1 Is it zero?
C $9285,1 Return if so - there is no item here.
C $9286,4 Does the X co-ordinate match?
C $928A,1 Return if not.
C $928B,5 Does the Y co-ordinate match?
C $9290,4 Mark the item as collected.
C $9294,4 Pick up the item and return.
c $9298 Check if Monty has collided with a nasty that can be removed with an item
D $9298 Used by the routines at #R$940C, #R$CD41 and #R$CE1B.
C $9298,3 Get the current position in #REGhl (#R$5C7B)
C $929B,3 Was there a collision?
C $929E,2 Move forward if so.
C $92A0,3 Get the current position.
C $92A3,4 Move forward one column and ten rows (?)
C $92A7,3 Was there a collision?
C $92AA,2 Move forward if so.
C $92AC,3 Get the current position.
C $92AF,5 Move back ten rows (?)
C $92B4,3 Was there a collision?
C $92B7,2 Move forward if so.
C $92B9,3 Get the current position.
C $92BC,5 Move back a row and a column (?)
C $92C1,3 Was there a collision?
C $92C4,2 Jump if so.
C $92C6,3 Get the position.
C $92C9,5 Move back a column and ten rows (?)
C $92CE,3 Was there a collision?
C $92D1,2 Jump if so.
C $92D3,3 Get the position
C $92D6,5 Move forward a column and back two rows (?)
C $92DB,3 Was there a collision?
C $92DE,1 Return if no collision was found.
N $92DF Monty has touched a nasty, react appropriately
C $92DF,4 Point #REGix at the room flags.
C $92E3,4 Has Monty picked up the collectable (non-coal) item?
C $92E7,3 No, so kill Monty.
C $92EA,4 Otherwise reset the collectable item flag, as it's had its one chance to be used.
C $92EE,9 Beep without disabling interrupts
C $92FA,3 #R$7780 is the empty graphic.
C $92FD,24 Clear the data so it is no longer visible or active.
C $9315,6 Set the attribute to the first attribute used in the room's static data. (#R$C54E)
C $931B,2 Remember #REGix.
C $931D,3 Update the nasties on screen.
C $9320,2 Restore #REGix.
C $9322,4 Flag the nasty as being invisible.
C $9326,1 Return.
c $9327 Return IX pointing to the index of the nasty Monty is touching, or 0
D $9327 Used by the routine at #R$92DF.
C $9327,4 Point IX to the nasties buffer at #R$C596.
C $932B,2 Maximum of 6 nasties per room.
C $932D,3 Get the current
C $9330,1 Put the X co-ordinate in A.
C $9331,3 Subtract the X co-ordinate of the nasty.
C $9334,2 If it is less than or the same, skip forward.
C $9336,6 If it is greater than, skip forward.
C $933C,1 Put the Y co-ordinate in A.
C $933D,3 Subtract the Y co-ordinate of the nasty.
C $9340,2 If it is less than or the same, skip forward.
C $9342,6 If it is greater than, skip forward.
C $9348,5 Is the collectable item flag set?
C $934D,2 No, so loop forward.
C $934F,1 Return with IX pointing at the nasty found.
C $9350,7 Loop round to the next nasty.
C $9357,5 Clear #REGix and return.
c $935C Check to see if Monty has moved near any coal, and if so, pick it up
D $935C Used by the routine at #R$940C.
C $935C,3 Get the current position.
C $935F,3 Is there any coal here?
C $9362,2 Jump forward if there is.
C $9364,7 Get the current X position plus 7.
C $936B,3 Is there any coal here?
C $936E,2 Jump forward if there is.
C $9370,7 Get the current X position plus #N$F.
C $9377,3 Is there any coal here?
C $937A,2 Jump forward if there is.
C $937C,7 Get the current Y position minus 7.
C $9383,3 Is there any coal here?
C $9386,2 Jump forward if there is.
C $9388,7 Get the current X position plus #N$F.
C $938F,4 Get the current Y position minus 7.
C $9393,3 Is there any coal here?
C $9396,2 Jump forward if there is.
C $9398,7 Get the current Y position minus 15.
C $939F,3 Store this temporarily.
C $93A2,3 Is there any coal here?
C $93A5,2 Jump forward if there is.
C $93A7,3 Restore the previously cached position.
C $93AA,4 Add 8 to the X position.
C $93AE,3 Cache this.
C $93B1,3 Is there any coal here?
C $93B4,2 Jump forward if there is.
C $93B6,3 Restore the previously cached position.
C $93B9,4 Add 7 to the X position.
C $93BD,3 Is there any coal here?
C $93C0,1 No, so there's nothing near.
N $93C1 At this point, Monty has walked near enough some coal to be able to pick it up.
C $93C1,2 Set that there's no coal here.
C $93CB,4 Put the found screen position for the coal in #R$9647.
C $93CF,9 Make a beep using the ROM routine, but skip the first instruction so that interrupts remain enabled.
C $93D8,4 #R$C53F holds coal positions in the room.
C $93DC,2 5 positions to check.
C $93DE,3 Get the found X position.
C $93E1,3 Is it this one?
C $93E4,2 Move forward if so.
C $93E6,7 Look at the next coal position.
C $93ED,3 Get the found Y position.
C $93F0,3 Is it this one?
C $93F3,2 Loop back if not.
N $93F5 Found the necessary entry for coal.
C $93F7,5 Put the coal index in #REGde.
C $93FC,3 #R$964D holds scores for coal.
C $93FF,1 Get the right offset.
C $9400,2 Bit 7 is not used here.
C $9402,4 Add to the score.
C $9408,3 Refresh the coal flags.
c $940C Enter a room
D $940C Used by the routines at #R$946E, #R$94D9, #R$96D9, #R$CD41 and #R$F7D6.
C $940C,3 Reset the stack to #N$5FFE.
C $940F,3 Get the current room (#R$9649).
C $9412,2 Is it the final room?
C $9414,3 Jump forward if so.
C $9417,2 Is it the first room?
C $9419,3 Jump forward if so.
C $941C,7 Set up interrupts at #R$C700 which points to #R$5B5B.
C $9423,6 Use #R$8F9F as the routine to be called.
C $9429,5 Put a "JP" command as the first byte.
C $942E,3 Copy the current room's data to the working set.
C $9431,3 Display the room.
C $9434,5 Are we on room #N$10?
C $9439,3 Jump forward if so.
N $943C Run the main loop in this room. This entry point is used by the routine at #R$96D9.
C $943C,1 Let interrupts run.
C $943D,3 Move the nasties.
C $9440,3 Check for picking up coal.
C $9443,3 Animate the coal.
C $9446,3 See if Monty collided with a white nasty.
C $9449,3 Check for player input.
C $944C,3 Update Monty's position.
C $944F,3 Check for picking up a collectable item.
C $9452,25 Move to a new room (#R$94D9) if Monty is off the edge of the room.
C $946B,3 Otherwise loop back.
c $946E Monty has died. Play the "death" tune and lose a life
D $946E Used by the routines at #R$8B90, #R$9148 and #R$9298.
C $946E,3 Play the tune.
C $9471,4 Subtract 1 from the number of lives.
C $9475,3 Redraw the display for this.
C $9478,4 Have we run out of lives?
C $947C,3 Jump if so.
C $947F,6 Set the current position to the start position in this room.
C $9485,1 Set #REGa to 0 to reset some flags.
C $9486,3 Reset distance fallen.
C $9489,3 Reset room flags.
C $948C,3 Reset game flags.
C $948F,6 Reset the pointer to the movement table back to #R$869C.
C $9495,3 Reset jump position.
C $949B,3 Re-enter the room.
c $949E Print the number of lives on the screen
D $949E Used by the routines at #R$946E, #R$9551 and #R$CD41.
C $949E,3 Get the number of lives.
C $94A1,2 Convert this to an offset into the character set at #R$813B.
C $94A3,2 Set bit 7 to make the string printing routine terminate after this character.
C $94A5,3 Store this printable value at the end of the string text.
C $94A8,4 Point IX to the string position and data.
C $94AC,4 Point IY to the string text
C $94B0,2 Set to print one row.
C $94B2,1 Make sure the stack returns from the string printing routine correctly.
C $94B3,3 Print the string.
b $94B6 Lives display position
D $94B6 Format is x position, y position, attribute, depth, attribute offset
B $94B6,5,5
b $94BB Lives display text
D $94BB "LIVES:  "
B $94BB,8,8
c $94C3 Copy the data for the current room into the working buffer
D $94C3 Used by the routine at #R$940C.
C $94C3,3 Get the current room (#R$9649).
C $94C6,1 Disable interrupts.
C $94C7,5 Put the current room multipled by #N$200 in #REGde.
C $94CC,3 Get the base address of the rooms (#R$9A2A).
C $94CF,1 Add the offset.
C $94D0,3 Destination is the working buffer at #R$C42A.
C $94D3,3 Length is always #N$200 bytes.
C $94D6,3 Do the copy and return.
c $94D9 Move into a new room
D $94D9 Used by the routine at #R$940C.
C $94D9,8 Reset bit 3 in the room flags (#R$8D52), so touching any nasty is fatal.
N $94E1 Test for moving left.
C $94E1,4 Is the X co-ordinate (#R$5C7B) far left?
C $94E5,2 Jump forward if not. Moving left.
C $94E7,4 Get the next room to the left.
C $94EB,3 Make this the current room (#R$9649).
C $94EE,5 Set the position to the far right.
C $94F3,3 Jump forward.
N $94F6 Test for moving right.
C $94F6,2 Is the X co-ordinate far right?
C $94F8,2 Jump forward if not.
N $94FA Moving right.
C $94FA,4 Get the next room to the right.
C $94FE,3 Make this the current room (#R$9649).
C $9501,2 Make the position the far left.
C $9503,2 Jump back to set this.
N $9505 Test for moving up.
C $9505,5 Is the Y co-ordinate (#R$5C7C) at the top?
C $950A,2 Jump forward if not.
N $950C Moving up.
C $950C,4 Get the next room up.
C $9510,3 Make this the current room (#R$9649).
C $9513,5 Set the position to the bottom.
C $9518,3 Jump forward.
N $951B If the next room is not left, right or up, it must be down.
C $951B,4 Get the next room down.
C $951F,3 Make this the current room (#R$9649).
C $9522,2 Make the position the top.
C $9524,2 Jump back to set this.
C $9526,6 Make the new position (#R$5C7B, #R$5C7C) the one to reset back to if a life is lost (#R$964B).
C $952C,3 Enter the new room.
c $952F Put (non coal) collectable objects on screen
D $952F Used by the routine at #R$9551.
C $952F,3 Get the object ID.
C $9532,2 Return if it's zero.
C $9534,1 Convert from 1 to 0-based.
C $9535,8 Multiply by 32 to give an appropriate offset.
C $953D,3 #R$7A00 = start of collectable objects.
C $9540,1 Add the appropriate offset.
C $9541,3 Store this as the next graphic to draw.
C $9544,6 Get the position to draw the graphic.
C $954A,3 Print the graphic.
C $954D,4 Copy the screen to the storage buffer and return.
c $9551 Display the current room
D $9551 Used by the routine at #R$940C.
C $9551,3 Print all static characters in the screen buffer.
C $9554,3 Make the screen buffer "live" so it is visible.
C $9557,3 Display collectable objects.
C $955A,3 Animate the coal.
C $955D,3 Print the score.
C $9560,3 Print the number of lives.
C $9563,3 Make a copy of the screen.
C $9566,2 Re-enable interrupts and return.
c $9568 Pick up an item
D $9568 Used by the routine at #R$927E.
C $9568,9 BEEP without disabling interrupts.
C $9571,3 Put the X co-ordinate in #REGl and the Y co-ordinate in #REGh.
C $9574,1 Remember the X co-ordinate in #REGc.
C $9575,4 Convert the Y co-ordinate to a word offset.
C $9579,4 Add this to get a pointer in the screen offset buffer (#R$EA60).
C $957D,1 Remember this.
C $957E,4 Get the screen address in #REGhl.
C $9582,1 Restore the X co-ordinate.
C $9583,3 Divide by 8 to get an offset from a screen address.
C $9586,1 Remember this offset.
C $9587,4 Combine the screen address with the offset to get the right position.
C $958B,4 Convert up to put the graphic in the buffer at #R$D260.
N $958F The appropriate location of the item was found, now blank it out.
C $958F,2 8 lines.
C $9591,6 Blank the graphic.
C $9597,1 Next line on screen.
C $9598,2 Loop until all lines are done.
C $959A,1 Restore the screen offset.
C $959B,4 Move back a line.
C $959F,4 Get the screen address in #REGhl.
C $95A3,4 Restore the offset and add it to get the right position.
C $95A7,4 Convert this to an offset in the screen buffer at #R$D260.
C $95AB,3 Jump forward to clear the second line of the item.
c $95AE Reset the index of the collectable item, as it was picked up
D $95AE Used by the routine at #R$968D.
C $95AE,5 Set the index at #R$C526 to 0.
c $95B3 Animate the coal colours in the room
D $95B3 Used by the routines at #R$940C and #R$9551.
C $95B3,4 Point IX at the coal data (#R$C53F).
C $95B7,13 Blank out the screen attribute buffer #R$CF54.
C $95C4,3 Loop round five items.
C $95C7,5 Get the coal score index in #REGhl.
C $95CC,3 #R$964D is the base pointer to the coal score table.
C $95CF,1 Get the right position.
C $95D0,2 Has Monty already picked the coal up?
C $95D2,2 If so, there's nothing to do here.
C $95D4,6 Are the X and Y co-ordinates both zero?
C $95DA,2 Move forward if so, there's no coal here.
C $95DF,5 Point at the next position.
C $95E4,3 Loop round to the next item.
c $95E8 Animate an item of coal in a room.
D $95E8 Used by the routine at #R$95B3.
R $95E8 IX Pointer to coal data (see #R$964D)
C $95E8,10 Multiply the Y position by 32 and put it in #REGhl.
C $95F2,5 Put the X position in #REGde.
C $95F7,1 Add the two together to get a screen offset.
C $95F8,1 Remember the base address.
C $95F9,4 Convert to an attribute address.
C $95FD,7 Switch the attribute colour.
C $9604,1 Restore the base address.
C $9605,4 Point to the correct place in the screen attribute buffer (#R$CF54).
C $9609,2 Flash the attribute here.
C $960B,4 Redraw the coal and return.
c $960F Draw the coal in the room
D $960F Used by the routines at #R$95B3 and #R$96AA.
R $960F IX Pointer to coal information (offset from #R$C53F)
C $960F,13 Convert the Y co-ordinate to a screen address and put it in #REGhl.
C $961C,1 Double it to get an appropriate entry in the screen address table.
C $961D,4 Add the basic address of the screen address table to get the right entry.
C $9621,4 Put the actual screen address in #REGhl.
C $9625,6 Add the X co-ordinate.
C $962B,5 Add an offset to give an address in the screen buffer from #R$D260.
C $9630,4 Point #REGiy at the coal UDG.
C $9634,2 8 rows to draw.
C $9636,3 Get the graphic data.
C $9639,1 Invert it.
C $963A,2 Store it on the screen and in the screen buffer.
C $963C,1 Move to the next row on screen.
C $963D,1 Move to the next row in the screen buffer.
C $963E,2 Move to the next graphic data.
C $9640,3 Loop while there are more rows to draw.
s $9643 Unused
S $9643,4,$04
b $9647 Storage block for calculating coal pickups
D $9647 Used by the routine in #R$935C.
B $9647,2,2
g $9649 Current room
B $9649,1,1
g $964A Number of lives
B $964A,1,1
g $964B Start position for this room (when a life is lost)
B $964B,2,2
b $964D Array of points given for each 'nth' coal item
D $964D If bit 7 is reset, Monty has picked this coal up. When the game starts, bit 7 on all bytes is set, so coal will not appear. After grabbing the bucket, the bit is reset, so coal can be collected.
N $964D Although seemingly random, clearing bit 7 reveals the assembler text A LD (NUTDROP), A LD (NUTEXP),A LD HL,30592 LD (60640 which is the code at #R$CD0A.
B $964D,64,8
c $968D Clear a non-coal item, as it has been collected
D $968D Used by the routine at #R$9568.
R $968D HL Screen offset of the item
C $968D,2 8 lines to clear.
C $968F,6 Blank the part of the line where the item was.
C $9695,1 Next line.
C $9696,2 Jump back if there is more to do.
C $9698,6 Put the co-ordinate of the item in #R$ECDE.
C $969E,3 #R$7780 is the empty graphic.
C $96A1,3 Store the graphic.
C $96A4,3 Print the item.
C $96A7,3 Reset the index and exit.
c $96AA Refresh any coal in the room.
D $96AA Used by the routine at #R$935C.
C $96AA,11 Put the tempoary store back in the main area.
C $96B5,13 Blank out all fields to #N$FF.
C $96C2,3 Redraw the coal.
C $96C5,12 Copy the temporary store back again and return.
b $96D1 Temporary space for coal data
B $96D1,8,8
c $96D9 Animate the rolling minecart in room #N$10
D $96D9 Used by the routine at #R$940C.
C $96D9,5 Is Monty at the bottom of the screen?
C $96DE,3 Jump back to the main loop if not.
C $96E1,3 Initialize the minecart's position to X=02 y=#N$2F
C $96E4,3 Store this
C $96E7,3 Initialize Monty's position to X=02 y=#N$37
C $96EA,3 Store this.
C $96ED,2 Run for #N$80 times.
C $96EF,1 Store #REGbc
C $96F0,4 Increment Monty's x co-ordinate.
C $96F4,4 Increment the minecart's x co-ordinate.
C $96F8,6 Set Monty's co-ordinates as the location to print.
C $96FE,6 Set the graphic to Monty right (#R$861C).
C $9704,3 Print the graphic.
C $9707,6 Set the minecart's co-ordinates as the location to print.
C $970D,3 Set the graphic to the minecart (#R$6F80).
C $9710,9 Cycle Monty's current frame from 0 to 7. This is used in the animation cycle for the minecart.
C $9719,4 Put the lowest 3 bits in #REGb.
C $971D,3 Set #REGde to move forward a graphic frame with each iteration.
C $9720,3 If the frame is 0, skip ahead.
C $9723,3 Move to the next row.
C $9726,3 Set the graphic frame as the one to draw.
C $9729,3 Draw the minecart.
C $972C,3 Restore #REGbc and loop if there is more to do.
N $972F The minecart has now hit the buffers. Tip it.
C $972F,3 #R$7780 is the empty graphic.
C $9732,3 Set the graphic to draw.
C $9735,6 Set at the current position.
C $973B,3 Draw the graphic.
C $973E,6 Set a new position to #N$98, #N$3F.
C $9744,2 Run for #N$20 times.
C $9746,1 Remember #REGbc.
C $9747,9 Put the next frame in #REGde.
C $9750,1 Remember this.
C $9751,4 Add to the base offset of the tipping minecart graphic (#R$7000).
C $9755,3 Set this as the graphic to print.
C $9758,6 Set the location to be X = #N$97 Y = #N$97.
C $975E,3 Draw the graphic.
C $9761,3 Get Monty's position.
C $9764,3 Set this as the position of the next sprite to update. (#R$ECDE).
C $9767,1 Restore #REGde.
C $9768,1 No effect, #REGhl is overwritten in the next instruction.
C $9769,6 Set the location to be X = #N$97 Y = #N$99.
C $976F,3 Draw the graphic.
C $9772,10 Move monty 1 to the right and 1 down.
C $977C,1 Restore #REGbc.
C $977D,2 Loop while there is still more to draw.
N $977F Monty has fallen off the edge, put him in the next room.
C $977F,2 Set #REGa to #N$11 to set up some flags.
C $9781,9 Set the position to X = $C0, Y = $A1
C $978A,3 Set the current room to #N$11.
C $978D,4 Reset distance fallen.
C $9791,3 Reset time jumping.
C $9794,3 Enter the new room.
g $9797 X co-ordinate of the minecart in room #N$10
B $9797,1,1
g $9798 Y co-ordinate of the minecart in room #N$10
B $9798,1,1
u $9799 Unused
S $9799,2,$02
u $979B Monty rolling (not used)
D $979B #GRAFIXSTR($979B)(Monty_rolling)
B $979B,128,8
u $981B Unused
C $981B,527
b $9A2A Room 00
D $9A2A The current room is copied into #R$C42A
N $9A2A #UDGXSCR(#PC)(Room_00)
B $9A2A,240,3 Static characters
B $9B1A,4,4 Wall attributes
W $9B1E,2,2 Offset for Monty's graphic
B $9B20,1,1 Next room UP
B $9B21,1,1 Next room DOWN
B $9B22,1,1 Next room LEFT
B $9B23,1,1 Next room RIGHT
B $9B24,1,1 Collectable item x co-ordinate
B $9B25,1,1 Collectable item y co-ordinate
B $9B26,1,1 Collectable item graphic index
B $9B27,1,1 Crusher x co-ordinate
B $9B28,1,1 Crusher y co-ordinate
B $9B29,1,1 Crusher bottom column
B $9B2A,1,1 Crusher time
B $9B2B,1,1 Crusher flag
B $9B2C,1,1 Crusher top column
B $9B2D,10,8,2
B $9B37,8,8 Coal UDG
B $9B3F,9,3 Coal positions
B $9B48,6,6
B $9B4E,72,9 Static character graphics #UDGSTR(#PC)
B $9B96,140,20 Nasty data
B $9C22,8,8 Moving platforms
b $9C2A Room 01
D $9C2A The current room is copied into #R$C42A
N $9C2A #UDGXSCR(#PC)(Room_01)
B $9C2A,240,3 Static characters
B $9D1A,4,4 Wall attributes
W $9D1E,2,2 Offset for Monty's graphic
B $9D20,1,1 Next room UP
B $9D21,1,1 Next room DOWN
B $9D22,1,1 Next room LEFT
B $9D23,1,1 Next room RIGHT
B $9D24,1,1 Collectable item x co-ordinate
B $9D25,1,1 Collectable item y co-ordinate
B $9D26,1,1 Collectable item graphic index
B $9D27,1,1 Crusher x co-ordinate
B $9D28,1,1 Crusher y co-ordinate
B $9D29,1,1 Crusher bottom column
B $9D2A,1,1 Crusher time
B $9D2B,1,1 Crusher flag
B $9D2C,1,1 Crusher top column
B $9D2D,10,8,2
B $9D37,8,8 Coal UDG
B $9D3F,9,3 Coal positions
B $9D48,6,6
B $9D4E,72,8 Static character graphics #UDGSTR(#PC)
B $9D96,140,20 Nasty data
B $9E22,8,8 Moving platforms
b $9E2A Room 02
D $9E2A The current room is copied into #R$C42A
N $9E2A #UDGXSCR(#PC)(Room_02)
B $9E2A,240,3 Static characters
B $9F1A,4,4 Wall attributes
W $9F1E,2,2 Offset for Monty's graphic
B $9F20,1,1 Next room UP
B $9F21,1,1 Next room DOWN
B $9F22,1,1 Next room LEFT
B $9F23,1,1 Next room RIGHT
B $9F24,1,1 Collectable item x co-ordinate
B $9F25,1,1 Collectable item y co-ordinate
B $9F26,1,1 Collectable item graphic index
B $9F27,1,1 Crusher x co-ordinate
B $9F28,1,1 Crusher y co-ordinate
B $9F29,1,1 Crusher bottom column
B $9F2A,1,1 Crusher time
B $9F2B,1,1 Crusher flag
B $9F2C,1,1 Crusher top column
B $9F2D,10,8,2
B $9F37,8,8 Coal UDG
B $9F3F,9,3 Coal positions
B $9F48,6,6
B $9F4E,72,9 Static character graphics #UDGSTR(#PC)
B $9F96,140,20 Nasty data
B $A022,8,8 Moving platforms
b $A02A Room 03
D $A02A The current room is copied into #R$C42A
N $A02A #UDGXSCR(#PC)(Room_03)
B $A02A,240,3 Static characters
B $A11A,4,4 Wall attributes
W $A11E,2,2 Offset for Monty's graphic
B $A120,1,1 Next room UP
B $A121,1,1 Next room DOWN
B $A122,1,1 Next room LEFT
B $A123,1,1 Next room RIGHT
B $A124,1,1 Collectable item x co-ordinate
B $A125,1,1 Collectable item y co-ordinate
B $A126,1,1 Collectable item graphic index
B $A127,1,1 Crusher x co-ordinate
B $A128,1,1 Crusher y co-ordinate
B $A129,1,1 Crusher bottom column
B $A12A,1,1 Crusher time
B $A12B,1,1 Crusher flag
B $A12C,1,1 Crusher top column
B $A12D,10,8,2
B $A137,8,8 Coal UDG
B $A13F,9,3 Coal positions
B $A148,6,6
B $A14E,72,9 Static character graphics #UDGSTR(#PC)
B $A196,140,20 Nasty data
B $A222,8,8 Moving platforms
b $A22A Room 04
D $A22A The current room is copied into #R$C42A
N $A22A #UDGXSCR(#PC)(Room_04)
B $A22A,240,3 Static characters
B $A31A,4,4 Wall attributes
W $A31E,2,2 Offset for Monty's graphic
B $A320,1,1 Next room UP
B $A321,1,1 Next room DOWN
B $A322,1,1 Next room LEFT
B $A323,1,1 Next room RIGHT
B $A324,1,1 Collectable item x co-ordinate
B $A325,1,1 Collectable item y co-ordinate
B $A326,1,1 Collectable item graphic index
B $A327,1,1 Crusher x co-ordinate
B $A328,1,1 Crusher y co-ordinate
B $A329,1,1 Crusher bottom column
B $A32A,1,1 Crusher time
B $A32B,1,1 Crusher flag
B $A32C,1,1 Crusher top column
B $A32D,10,8,2
B $A337,8,8 Coal UDG
B $A33F,9,3 Coal positions
B $A348,6,6
B $A34E,72,9 Static character graphics #UDGSTR(#PC)
B $A396,140,20 Nasty data
B $A422,8,8 Moving platforms
b $A42A Room 05
D $A42A The current room is copied into #R$C42A
N $A42A #UDGXSCR(#PC)(Room_05)
B $A42A,240,3 Static characters
B $A51A,4,4 Wall attributes
W $A51E,2,2 Offset for Monty's graphic
B $A520,1,1 Next room UP
B $A521,1,1 Next room DOWN
B $A522,1,1 Next room LEFT
B $A523,1,1 Next room RIGHT
B $A524,1,1 Collectable item x co-ordinate
B $A525,1,1 Collectable item y co-ordinate
B $A526,1,1 Collectable item graphic index
B $A527,1,1 Crusher x co-ordinate
B $A528,1,1 Crusher y co-ordinate
B $A529,1,1 Crusher bottom column
B $A52A,1,1 Crusher time
B $A52B,1,1 Crusher flag
B $A52C,1,1 Crusher top column
B $A52D,10,8,2
B $A537,8,8 Coal UDG
B $A53F,9,3 Coal positions
B $A548,6,6
B $A54E,72,9 Static character graphics #UDGSTR(#PC)
B $A596,140,20 Nasty data
B $A622,8,8 Moving platforms
b $A62A Room 06
D $A62A The current room is copied into #R$C42A
N $A62A #UDGXSCR(#PC)(Room_06)
B $A62A,240,3 Static characters
B $A71A,4,4 Wall attributes
W $A71E,2,2 Offset for Monty's graphic
B $A720,1,1 Next room UP
B $A721,1,1 Next room DOWN
B $A722,1,1 Next room LEFT
B $A723,1,1 Next room RIGHT
B $A724,1,1 Collectable item x co-ordinate
B $A725,1,1 Collectable item y co-ordinate
B $A726,1,1 Collectable item graphic index
B $A727,1,1 Crusher x co-ordinate
B $A728,1,1 Crusher y co-ordinate
B $A729,1,1 Crusher bottom column
B $A72A,1,1 Crusher time
B $A72B,1,1 Crusher flag
B $A72C,1,1 Crusher top column
B $A72D,10,8,2
B $A737,8,8 Coal UDG
B $A73F,9,3 Coal positions
B $A748,6,6
B $A74E,72,9 Static character graphics #UDGSTR(#PC)
B $A796,140,20 Nasty data
B $A822,8,8 Moving platforms
b $A82A Room 07
D $A82A The current room is copied into #R$C42A
N $A82A #UDGXSCR(#PC)(Room_07)
B $A82A,240,3 Static characters
B $A91A,4,4 Wall attributes
W $A91E,2,2 Offset for Monty's graphic
B $A920,1,1 Next room UP
B $A921,1,1 Next room DOWN
B $A922,1,1 Next room LEFT
B $A923,1,1 Next room RIGHT
B $A924,1,1 Collectable item x co-ordinate
B $A925,1,1 Collectable item y co-ordinate
B $A926,1,1 Collectable item graphic index
B $A927,1,1 Crusher x co-ordinate
B $A928,1,1 Crusher y co-ordinate
B $A929,1,1 Crusher bottom column
B $A92A,1,1 Crusher time
B $A92B,1,1 Crusher flag
B $A92C,1,1 Crusher top column
B $A92D,10,8,2
B $A937,8,8 Coal UDG
B $A93F,9,3 Coal positions
B $A948,6,6
B $A94E,72,9 Static character graphics #UDGSTR(#PC)
B $A996,140,20 Nasty data
B $AA22,8,8 Moving platforms
b $AA2A Room 08
D $AA2A The current room is copied into #R$C42A
N $AA2A #UDGXSCR(#PC)(Room_08)
B $AA2A,240,3 Static characters
B $AB1A,4,4 Wall attributes
W $AB1E,2,2 Offset for Monty's graphic
B $AB20,1,1 Next room UP
B $AB21,1,1 Next room DOWN
B $AB22,1,1 Next room LEFT
B $AB23,1,1 Next room RIGHT
B $AB24,1,1 Collectable item x co-ordinate
B $AB25,1,1 Collectable item y co-ordinate
B $AB26,1,1 Collectable item graphic index
B $AB27,1,1 Crusher x co-ordinate
B $AB28,1,1 Crusher y co-ordinate
B $AB29,1,1 Crusher bottom column
B $AB2A,1,1 Crusher time
B $AB2B,1,1 Crusher flag
B $AB2C,1,1 Crusher top column
B $AB2D,10,8,2
B $AB37,8,8 Coal UDG
B $AB3F,9,3 Coal positions
B $AB48,6,6
B $AB4E,72,9 Static character graphics #UDGSTR(#PC)
B $AB96,140,20 Nasty data
B $AC22,8,8 Moving platforms
b $AC2A Room 09
D $AC2A The current room is copied into #R$C42A
N $AC2A #UDGXSCR(#PC)(Room_09)
B $AC2A,240,3 Static characters
B $AD1A,4,4 Wall attributes
W $AD1E,2,2 Offset for Monty's graphic
B $AD20,1,1 Next room UP
B $AD21,1,1 Next room DOWN
B $AD22,1,1 Next room LEFT
B $AD23,1,1 Next room RIGHT
B $AD24,1,1 Collectable item x co-ordinate
B $AD25,1,1 Collectable item y co-ordinate
B $AD26,1,1 Collectable item graphic index
B $AD27,1,1 Crusher x co-ordinate
B $AD28,1,1 Crusher y co-ordinate
B $AD29,1,1 Crusher bottom column
B $AD2A,1,1 Crusher time
B $AD2B,1,1 Crusher flag
B $AD2C,1,1 Crusher top column
B $AD2D,10,8,2
B $AD37,8,8 Coal UDG
B $AD3F,9,3 Coal positions
B $AD48,6,6
B $AD4E,72,9 Static character graphics #UDGSTR(#PC)
B $AD96,140,20 Nasty data
B $AE22,8,8 Moving platforms
b $AE2A Room 0A
D $AE2A The current room is copied into #R$C42A
N $AE2A #UDGXSCR(#PC)(Room_0A)
B $AE2A,240,3 Static characters
B $AF1A,4,4 Wall attributes
W $AF1E,2,2 Offset for Monty's graphic
B $AF20,1,1 Next room UP
B $AF21,1,1 Next room DOWN
B $AF22,1,1 Next room LEFT
B $AF23,1,1 Next room RIGHT
B $AF24,1,1 Collectable item x co-ordinate
B $AF25,1,1 Collectable item y co-ordinate
B $AF26,1,1 Collectable item graphic index
B $AF27,1,1 Crusher x co-ordinate
B $AF28,1,1 Crusher y co-ordinate
B $AF29,1,1 Crusher bottom column
B $AF2A,1,1 Crusher time
B $AF2B,1,1 Crusher flag
B $AF2C,1,1 Crusher top column
B $AF2D,10,8,2
B $AF37,8,8 Coal UDG
B $AF3F,9,3 Coal positions
B $AF48,6,6
B $AF4E,72,9 Static character graphics #UDGSTR(#PC)
B $AF96,140,20 Nasty data
B $B022,8,8 Moving platforms
b $B02A Room 0B
D $B02A The current room is copied into #R$C42A
N $B02A #UDGXSCR(#PC)(Room_0B)
B $B02A,240,3 Static characters
B $B11A,4,4 Wall attributes
W $B11E,2,2 Offset for Monty's graphic
B $B120,1,1 Next room UP
B $B121,1,1 Next room DOWN
B $B122,1,1 Next room LEFT
B $B123,1,1 Next room RIGHT
B $B124,1,1 Collectable item x co-ordinate
B $B125,1,1 Collectable item y co-ordinate
B $B126,1,1 Collectable item graphic index
B $B127,1,1 Crusher x co-ordinate
B $B128,1,1 Crusher y co-ordinate
B $B129,1,1 Crusher bottom column
B $B12A,1,1 Crusher time
B $B12B,1,1 Crusher flag
B $B12C,1,1 Crusher top column
B $B12D,10,8,2
B $B137,8,8 Coal UDG
B $B13F,9,3 Coal positions
B $B148,6,6
B $B14E,72,9 Static character graphics #UDGSTR(#PC)
B $B196,140,20 Nasty data
B $B222,8,8 Moving platforms
b $B22A Room 0C
D $B22A The current room is copied into #R$C42A
N $B22A #UDGXSCR(#PC)(Room_0C)
B $B22A,240,3 Static characters
B $B31A,4,4 Wall attributes
W $B31E,2,2 Offset for Monty's graphic
B $B320,1,1 Next room UP
B $B321,1,1 Next room DOWN
B $B322,1,1 Next room LEFT
B $B323,1,1 Next room RIGHT
B $B324,1,1 Collectable item x co-ordinate
B $B325,1,1 Collectable item y co-ordinate
B $B326,1,1 Collectable item graphic index
B $B327,1,1 Crusher x co-ordinate
B $B328,1,1 Crusher y co-ordinate
B $B329,1,1 Crusher bottom column
B $B32A,1,1 Crusher time
B $B32B,1,1 Crusher flag
B $B32C,1,1 Crusher top column
B $B32D,10,8,2
B $B337,8,8 Coal UDG
B $B33F,9,3 Coal positions
B $B348,6,6
B $B34E,72,9 Static character graphics #UDGSTR(#PC)
B $B396,140,20 Nasty data
B $B422,8,8 Moving platforms
b $B42A Room 0D
D $B42A The current room is copied into #R$C42A
N $B42A #UDGXSCR(#PC)(Room_0D)
B $B42A,240,3 Static characters
B $B51A,4,4 Wall attributes
W $B51E,2,2 Offset for Monty's graphic
B $B520,1,1 Next room UP
B $B521,1,1 Next room DOWN
B $B522,1,1 Next room LEFT
B $B523,1,1 Next room RIGHT
B $B524,1,1 Collectable item x co-ordinate
B $B525,1,1 Collectable item y co-ordinate
B $B526,1,1 Collectable item graphic index
B $B527,1,1 Crusher x co-ordinate
B $B528,1,1 Crusher y co-ordinate
B $B529,1,1 Crusher bottom column
B $B52A,1,1 Crusher time
B $B52B,1,1 Crusher flag
B $B52C,1,1 Crusher top column
B $B52D,10,8,2
B $B537,8,8 Coal UDG
B $B53F,9,3 Coal positions
B $B548,6,6
B $B54E,72,9 Static character graphics #UDGSTR(#PC)
B $B596,140,20 Nasty data
B $B622,8,8 Moving platforms
b $B62A Room 0E
D $B62A The current room is copied into #R$C42A
N $B62A #UDGXSCR(#PC)(Room_0E)
B $B62A,240,3 Static characters
B $B71A,4,4 Wall attributes
W $B71E,2,2 Offset for Monty's graphic
B $B720,1,1 Next room UP
B $B721,1,1 Next room DOWN
B $B722,1,1 Next room LEFT
B $B723,1,1 Next room RIGHT
B $B724,1,1 Collectable item x co-ordinate
B $B725,1,1 Collectable item y co-ordinate
B $B726,1,1 Collectable item graphic index
B $B727,1,1 Crusher x co-ordinate
B $B728,1,1 Crusher y co-ordinate
B $B729,1,1 Crusher bottom column
B $B72A,1,1 Crusher time
B $B72B,1,1 Crusher flag
B $B72C,1,1 Crusher top column
B $B72D,10,8,2
B $B737,8,8 Coal UDG
B $B73F,9,3 Coal positions
B $B748,6,6
B $B74E,72,9 Static character graphics #UDGSTR(#PC)
B $B796,140,20 Nasty data
B $B822,8,8 Moving platforms
b $B82A Room 0F
D $B82A The current room is copied into #R$C42A
N $B82A #UDGXSCR(#PC)(Room_0F)
B $B82A,240,3 Static characters
B $B91A,4,4 Wall attributes
W $B91E,2,2 Offset for Monty's graphic
B $B920,1,1 Next room UP
B $B921,1,1 Next room DOWN
B $B922,1,1 Next room LEFT
B $B923,1,1 Next room RIGHT
B $B924,1,1 Collectable item x co-ordinate
B $B925,1,1 Collectable item y co-ordinate
B $B926,1,1 Collectable item graphic index
B $B927,1,1 Crusher x co-ordinate
B $B928,1,1 Crusher y co-ordinate
B $B929,1,1 Crusher bottom column
B $B92A,1,1 Crusher time
B $B92B,1,1 Crusher flag
B $B92C,1,1 Crusher top column
B $B92D,10,8,2
B $B937,8,8 Coal UDG
B $B93F,9,3 Coal positions
B $B948,6,6
B $B94E,72,9 Static character graphics #UDGSTR(#PC)
B $B996,140,20 Nasty data
B $BA22,8,8 Moving platforms
b $BA2A Room 10
D $BA2A The current room is copied into #R$C42A
N $BA2A #UDGXSCR(#PC)(Room_10)
B $BA2A,240,3 Static characters
B $BB1A,4,4 Wall attributes
W $BB1E,2,2 Offset for Monty's graphic
B $BB20,1,1 Next room UP
B $BB21,1,1 Next room DOWN
B $BB22,1,1 Next room LEFT
B $BB23,1,1 Next room RIGHT
B $BB24,1,1 Collectable item x co-ordinate
B $BB25,1,1 Collectable item y co-ordinate
B $BB26,1,1 Collectable item graphic index
B $BB27,1,1 Crusher x co-ordinate
B $BB28,1,1 Crusher y co-ordinate
B $BB29,1,1 Crusher bottom column
B $BB2A,1,1 Crusher time
B $BB2B,1,1 Crusher flag
B $BB2C,1,1 Crusher top column
B $BB2D,10,8,2
B $BB37,8,8 Coal UDG
B $BB3F,9,3 Coal positions
B $BB48,6,6
B $BB4E,72,9 Static character graphics UDGSTR(#PC)
B $BB96,140,20 Nasty data
B $BC22,8,8 Moving platforms
b $BC2A Room 11
D $BC2A The current room is copied into #R$C42A
N $BC2A #UDGXSCR(#PC)(Room_11)
B $BC2A,240,3 Static characters
B $BD1A,4,4 Wall attributes
W $BD1E,2,2 Offset for Monty's graphic
B $BD20,1,1 Next room UP
B $BD21,1,1 Next room DOWN
B $BD22,1,1 Next room LEFT
B $BD23,1,1 Next room RIGHT
B $BD24,1,1 Collectable item x co-ordinate
B $BD25,1,1 Collectable item y co-ordinate
B $BD26,1,1 Collectable item graphic index
B $BD27,1,1 Crusher x co-ordinate
B $BD28,1,1 Crusher y co-ordinate
B $BD29,1,1 Crusher bottom column
B $BD2A,1,1 Crusher time
B $BD2B,1,1 Crusher flag
B $BD2C,1,1 Crusher top column
B $BD2D,10,8,2
B $BD37,8,8 Coal UDG
B $BD3F,9,3 Coal positions
B $BD48,6,6
B $BD4E,72,9 Static character graphics #UDGSTR(#PC)
B $BD96,140,20 Nasty data
B $BE22,8,8 Moving platforms
b $BE2A Room 12
D $BE2A The current room is copied into #R$C42A
N $BE2A #UDGXSCR(#PC)(Room_12)
B $BE2A,240,3 Static characters
B $BF1A,4,4 Wall attributes
W $BF1E,2,2 Offset for Monty's graphic
B $BF20,1,1 Next room UP
B $BF21,1,1 Next room DOWN
B $BF22,1,1 Next room LEFT
B $BF23,1,1 Next room RIGHT
B $BF24,1,1 Collectable item x co-ordinate
B $BF25,1,1 Collectable item y co-ordinate
B $BF26,1,1 Collectable item graphic index
B $BF27,1,1 Crusher x co-ordinate
B $BF28,1,1 Crusher y co-ordinate
B $BF29,1,1 Crusher bottom column
B $BF2A,1,1 Crusher time
B $BF2B,1,1 Crusher flag
B $BF2C,1,1 Crusher top column
B $BF2D,10,8,2
B $BF37,8,8 Coal UDG
B $BF3F,9,3 Coal positions
B $BF48,6,6
B $BF4E,72,9 Static character graphics #UDGSTR(#PC)
B $BF96,140,20 Nasty data
B $C022,8,8 Moving platforms
b $C02A Room 13
D $C02A The current room is copied into #R$C42A
N $C02A #UDGXSCR(#PC)(Room_13)
B $C02A,240,3 Static characters
B $C11A,4,4 Wall attributes
W $C11E,2,2 Offset for Monty's graphic
B $C120,1,1 Next room UP
B $C121,1,1 Next room DOWN
B $C122,1,1 Next room LEFT
B $C123,1,1 Next room RIGHT
B $C124,1,1 Collectable item x co-ordinate
B $C125,1,1 Collectable item y co-ordinate
B $C126,1,1 Collectable item graphic index
B $C127,1,1 Crusher x co-ordinate
B $C128,1,1 Crusher y co-ordinate
B $C129,1,1 Crusher bottom column
B $C12A,1,1 Crusher time
B $C12B,1,1 Crusher flag
B $C12C,1,1 Crusher top column
B $C12D,10,8,2
B $C137,8,8 Coal UDG
B $C13F,9,3 Coal positions
B $C148,6,6
B $C14E,72,9 Static character graphics #UDGSTR(#PC)
B $C196,140,20 Nasty data
B $C222,8,8 Moving platforms
b $C22A Room 14
D $C22A The current room is copied into #R$C42A
N $C22A #UDGXSCR(#PC)(Room_14)
B $C22A,240,3 Static characters
B $C31A,4,4 Wall attributes
W $C31E,2,2 Offset for Monty's graphic
B $C320,1,1 Next room UP
B $C321,1,1 Next room DOWN
B $C322,1,1 Next room LEFT
B $C323,1,1 Next room RIGHT
B $C324,1,1 Collectable item x co-ordinate
B $C325,1,1 Collectable item y co-ordinate
B $C326,1,1 Collectable item graphic index
B $C327,1,1 Crusher x co-ordinate
B $C328,1,1 Crusher y co-ordinate
B $C329,1,1 Crusher bottom column
B $C32A,1,1 Crusher time
B $C32B,1,1 Crusher flag
B $C32C,1,1 Crusher top column
B $C32D,10,8,2
B $C337,8,8 Coal UDG
B $C33F,9,3 Coal positions
B $C348,6,6
B $C34E,72,9 Static character graphics #UDGSTR(#PC)
B $C396,140,20 Nasty data
B $C422,8,8 Moving platforms
g $C42A Static characters on screen
D $C42A Each character is 3 bits ie: 3 bytes for 8 characters
D $C42A #N$0C bytes per line, #N$F0 bytes per page
B $C42A,240,3
g $C51A "Water" attribute
D $C51A Monty can walk through any cell with this attribute. Used by the routines in #R$8D0F and #R$8D2E.
B $C51A,1,1
g $C51B "Fire" attribute
D $C51B If Monty touches this attribute, he will die. Used by the routines in #R$8D0F and #R$8D2E.
B $C51B,1,1
g $C51C "Ladder" attribute
D $C51C If Monty touches this attribute, he can climb around it. Used by the routines in #R$8D0F and #R$8D2E.
B $C51C,1,1
g $C51D "Wall" attribute
D $C51D Monty can't walk through any cell with this attribute. Used by the routines in #R$8D0F and #R$8D2E.
N $C51D This attribute may have had a previous use, but the code at #8C3D sets it to a wall regardless.
B $C51D,1,1
g $C51E Offset for Monty's graphic
W $C51E,2,2
g $C520 Next room UP
B $C520,1,1
g $C521 Next room DOWN
B $C521,1,1
g $C522 Next room LEFT
B $C522,1,1
g $C523 Next room RIGHT
B $C523,1,1
g $C524 x co-ordinate of (non coal) collectable item
B $C524,1,1
g $C525 y co-ordinate of (non coal) collectable item
B $C525,1,1
g $C526 Graphic index of (non coal) collectable item
B $C526,1,1
g $C527 x co-ordinate of crusher
B $C527,1,1
g $C528 y co-ordinate of crusher
B $C528,1,1
g $C529 Crusher bottom column
B $C529,1,1
g $C52A Ticks left until a crusher should fire
B $C52A,1,1
g $C52B Set to 0 if a crusher is ascending, or 1 if it is descending
B $C52B,1,1
g $C52C Crusher top column
B $C52C,1,1
u $C52D Unused
B $C52D,10,8,2
g $C537 Coal UDG
B $C537,8,8
g $C53F Positions of coal in the room
D $C53F Format is: #TABLE( default, centre ) { =h Offset | =h Value } { 00 | Index into the score buffer at #R$964D } { 01 | X co-ordinate } { 02 | Y co-ordinate } TABLE#
B $C53F,15,3
g $C54E Static character graphics
D $C54E First byte is the attribute, other bytes are the data
B $C54E,72,9
g $C596 Nasty data
D $C596 Each entry contains : #TABLE( default, centre ) { =h Offset | =h Value } { 00 | Status flag. 0 = two directions, 1 - ???, 2 = one direction, 3 = invisible } { 01 - 02 | Address of graphic (up) } { 03 - 04 | Address of graphic (down) } { 05 - 06 | Address of graphic (left) } { 07 - 08 | Address of graphic (right) } { 09 | Attribute } { 0A | Index of this nasty in the table } { 0B | Current direction (0 - up, 1 - down, 2 - left, 3 - right) } { 0C | Current X co-ordinate } { 0D | Current Y co-ordinate } { 0E | Width or height of path covered } { 0F | Not used } { 10 | Current distance before changing direction } { 11 | Speed ( 0 - static, 1 - slow, 2 - fast ) } { 12 | Not used } { 13 | Not used } TABLE#
B $C596,140,20
g $C622 Moving platform 1 left x co-ordinate
B $C622,1,1
g $C623 Moving platform 1 left y co-ordinate
B $C623,1,1
g $C624 Moving platform left edge
B $C624,1,1
g $C625 Moving platform right edge
B $C625,1,1
g $C626 Moving platform 2 right x co-ordinate
B $C626,1,1
g $C627 Moving platform 2 right y co-ordinate
B $C627,1,1
g $C628 Set bit 7 if the platform is closing, otherwise reset if it is opening
B $C628,1,1
u $C629 Unused
B $C629,1,1
c $C62A Copy the room graphic buffer to screen so it is visible
D $C62A Used by the routines at #R$9551 and #R$CD41.
C $C62A,11 Copy attribute address to attribute buffer.
C $C635,11 Copy screen address to screen buffer.
u $C641 Unused
C $C641,193
w $C700 Vector jump table
D $C700 This table is used to work around limitations with Interrupt Mode 2 on the Spectrum. When this mode is enabled, the #REGi register contains the top 8 bytes of an address. Because the bottom 8 bytes are undefined, the actual jump will be randomly anywhere in this buffer. As the two bytes are the same, the jump is guaranteed to be #R$5B5B. This is a #HTML(<a href="http://www.breakintoprogram.co.uk/hardware/computers/zx-spectrum/interrupts">well-known hack on the ZX Spectrum</a>).
W $C700,256,2
u $C800 Unused
C $C800,80
u $C850 Unused
B $C850,58,8*7,2
s $C88A Unused
S $C88A,430,$01AE
u $CA38 Unused
B $CA38,1,1
s $CA39 Unused
S $CA39,152,$98
c $CAD1 Display the "game won" sequence
D $CAD1 Used by the routine at #R$F858.
C $CAD1,3 Set #REGhl to the start of the screen buffer.
C $CAD4,1 Turn off interrupts, so IM1 can be set.
C $CAD5,4 Set #REGiy to the default used in the ROM.
C $CAD9,2 Switch to interrupt mode 1.
C $CADB,1 Re-enable interrupts
C $CADC,10 Clear the screen.
C $CAE6,13 Set the attributes to bright cyan on black
C $CAF3,3 Print the score.
C $CAF6,4 Reset the timer for scrolling the message.
C $CAFA,5 Start at column 5.
C $CAFF,4 Point #REGix to the end message.
c $CB03 Print a message
D $CB03 Characters are offsets from the character set at 813B (ie: ASCII - 20h)
D $CB03 or FE = end of message, FF = newline
R $CB03 IX Pointer to the text buffer
C $CB03,3 Get the next line.
C $CB06,2 Is it the end of the message?
C $CB08,1 Return if so.
C $CB09,2 Is it a new line?
C $CB0B,3 Print one if so.
C $CB0E,3 Otherwise print the line.
C $CB11,4 Move to the next data and repeat.
c $CB15 Scroll a line of the message
D $CB15 Used by the routine at #R$CB03.
C $CB15,1 Remember #REGa.
C $CB16,2 Start at column 5.
C $CB18,2 Start at row 0.
C $CB1A,3 Set the current column.
C $CB1D,9 Increment the timer, which cycles between 0 and 3.
C $CB26,2 If the timer is not yet zero, skip this.
C $CB28,5 Scroll #N$1A columns.
C $CB2D,1 Scroll #0A rows.
C $CB2E,3 Scroll the column.
C $CB31,2 Loop back if there is more to do.
C $CB33,2 Restore #REGa and return.
c $CB35 Print a character in a message
R $CB35 IX Pointer to the text buffer
R $CB35 A Character to print
C $CB35,2 Remember #REGix
C $CB37,3 Put the character in #REGhl.
C $CB3A,3 Multiply by 8 to get a correct offset.
C $CB3D,4 Add basic offset to character set.
C $CB41,3 Put the address of the graphic in #REGix.
C $CB44,3 Point #REGhl at the bottom of the screen.
C $CB47,6 Put the column in #REGde.
C $CB4D,1 Add this as an offset to get the actual screen address.
C $CB4E,2 8 rows to copy.
C $CB50,3 Get the graphic data.
C $CB53,1 Copy it to screen.
C $CB54,1 Move forward a row.
C $CB55,2 Move forward in the data.
C $CB57,2 Loop back if there is more to do.
C $CB59,2 Restore #REGix.
C $CB5B,7 Move to the next column.
c $CB63 Move a line of a message upwards
D $CB63 Used by the routine at #R$CB15.
C $CB63,6 Store all registers.
C $CB69,4 Point #REGix at the bottom of the screen (using the offset from #R$EA60).
C $CB6D,2 Number of characters to scroll.
C $CB70,1 Wait for interrupts, to stop flicker.
C $CB71,1 Preserve #REGbc.
C $CB72,6 Copy from the first line.
C $CB78,6 Copy to the second line.
C $CB7E,3 Copy one line.
C $CB81,2 Do the copy.
C $CB83,1 Restore IX.
C $CB84,4 Move up a line.
C $CB88,2 Loop back until all lines are scrolled.
C $CB8A,7 Restore all registers and return.
b $CB91 Column to print the next character in a message.
B $CB91,1,1
g $CB92 Timer used when scrolling the end message
D $CB92 Cycles between 00 and 03.
B $CB92,1,1
c $CB93 Run one frame in the first (outdoor) room
D $CB93 Used by the routine at #R$FF5B.
C $CB93,4 Has the bucket been collected?
C $CB97,2 Jump forward if so.
N $CB99 The bucket is animated after 4 calls to this routine.
C $CB99,7 Decrement the tick counter.
C $CBA0,2 Jump forward if the counter hasn't reached 0.
C $CBA2,5 Otherwise reset it to 3.
C $CBA7,4 Increment the frame counter for the bucket.
C $CBAB,5 If the counter reaches 3, reset it to 0.
C $CBB0,3 Convert into an offset.
C $CBB3,4 Add to the base address of the bucket (#R$6000).
C $CBB7,3 Next graphic to print
C $CBBA,6 Set Location to print.
C $CBC3,4 Has the bucket been collected?
C $CBC7,2 Jump forward if not.
N $CBC9 As the bucket has been collected, the miner needs to chase Monty.
C $CBC9,7 Increment the miner's X co-ordinate.
C $CBD0,3 #R$6080 - base address of miner graphic.
C $CBD3,3 Get the frame ID of the miner.
C $CBD6,3 Get the actual graphic offset in #REGde.
C $CBD9,1 Remember the offset.
C $CBDA,1 Add this to the base address.
C $CBDB,3 Store the graphic to copy.
C $CBDE,6 Store the X co-ordinate.
C $CBE4,5 Y co-ordinate is always #N$5F.
C $CBE9,3 Draw the graphic.
C $CBEC,3 Point #REGhl to the bottom half of the graphic.
C $CBEF,1 Restore the offset.
C $CBF0,1 Add the offset.
C $CBF1,3 Store the graphic to copy.
C $CBF4,5 Y co-ordinate is always #N$4F.
C $CBF9,3 Draw the graphic.
N $CBFC The miner is animated after 4 calls to this routine.
C $CBFC,7 Decrement the frame counter.
C $CC03,2 Jump forward if it is not 0.
C $CC05,5 Otherwise set it back to 3.
C $CC0A,9 Increment the animination frame for the miner, but if it reaches 4, reset it to 0.
N $CC13 Draw the squirrel, and if necessary, a nut.
C $CC13,3 Get the direction.
C $CC16,2 Is it left?
C $CC18,2 Jump forward if so.
N $CC1A The squirrel is moving right.
C $CC1A,7 Increment the X co-ordinate.
C $CC21,7 Decrement the frame counter.
C $CC28,3 Get the animation frame for the squirrel.
C $CC2B,2 Jump forward if it is not 0.
C $CC2D,5 Otherwise set it back to 3.
C $CC32,9 Increment the animination frame for the squirrel, but if it reaches 4, reset it to 0.
C $CC3B,3 Draw the graphic.
C $CC3E,3 Base address of the squirrel - left (#R$6200).
C $CC41,1 Add the offset.
C $CC42,3 Store the graphic to copy.
C $CC45,6 Store the X co-ordinate.
C $CC4B,5 Y co-ordinate is always 0.
C $CC50,3 Draw the graphic.
C $CC53,5 Has the squirrel reached the tree trunk?
C $CC58,2 Jump forward if not.
C $CC5A,4 Otherwise set the X co-ordinate to the maximum of #N$7F.
C $CC5E,4 Is there a nut?
C $CC62,2 Jump forward if not. The squirrel has reached the trunk, drop a nut.
C $CC64,8 Invert the direction from right to left.
C $CC6C,2 Jump forward.
N $CC6E The squirrel is moving left.
C $CC6E,7 Decrement the X co-ordinate.
C $CC75,7 Decrement the frame counter.
C $CC7C,3 Get the animation frame for the squirrel.
C $CC7F,2 Jump forward if the counter is not 0.
C $CC81,5 Otherwise reset to 3.
C $CC86,3 Get the animation frame for the squirrel.
C $CC89,6 Increment the frame, but if it reaches 4, reset to 0.
C $CC8F,3 Get the graphic offset.
C $CC92,3 Base address of the squirrel - right (#R$6280).
C $CC95,3 Get the X co-ordinate.
C $CC98,2 Has the squirrel reached the end of the branch?
C $CC9A,2 Jump if not.
C $CC9C,8 Change the direction from left to right.
C $CCA4,5 Signal that a nut should be dropped and loop back to draw the squirrel.
N $CCA9 Draw the nut if it exists.
C $CCA9,4 Is there a nut?
C $CCAD,1 Return if not, nothing more to do.
C $CCAE,4 Is the nut exploding?
C $CCB2,2 Jump forward if so.
C $CCB4,7 Decrement the height of the nut by 1.
C $CCBB,3 Base address of the nut (#R$6300).
C $CCBE,3 Store graphic to copy.
C $CCC1,3 Store the Y co-ordinate.
C $CCC4,5 X co-ordinate is always #N$68.
C $CCC9,3 Draw the graphic.
C $CCCC,5 Has the nut reached the floor?
C $CCD1,1 Return if not, nothing more to do.
C $CCD2,4 Set the flag (#R$CD3D) to denote the nut should now explode and return.
N $CCD6 The nut has reached the floor and should explode.
C $CCD6,7 Decrement the timer.
C $CCDD,1 Return if the timer is not yet zero.
C $CCDE,5 Otherwise restore to 3.
C $CCE3,9 Increment the graphic ID, but if it reaches 4, reset to 0.
C $CCEC,2 If the last frame was reached, the nut has gone.
C $CCEE,6 Otherwise store the Y co-ordinate (was #N$4F).
C $CCF4,5 X co-ordinate is always #N$68.
C $CCF9,3 Get the graphic ID.
C $CCFC,3 Convert this to an offset.
C $CCFF,3 #R$6300 is the base address for the nut graphic.
C $CD02,1 Add the offset.
C $CD03,3 Store this as the graphic to copy.
C $CD06,3 Draw the graphic and return.
N $CD0A The nut exploded and is no more.
C $CD0A,1 Set #REGa to 0 to clear some flags.
C $CD0B,3 Squirrel is not dropping a nut.
C $CD0E,3 Nut will be falling when next dropped.
C $CD11,3 #R$7780 is the empty graphic.
C $CD14,3 Store the graphic to copy.
C $CD17,3 Erase the graphic at #N$68, #N$4F.
C $CD1A,3 Store the co-ordinates.
C $CD1D,3 Print the graphic.
C $CD20,6 Set the nut back to the top of the tree and return.
c $CD26 Convert a sprite ID to a graphic offset
D $CD26 Used by the routine at #R$CB93.
R $CD26 A The ID  to look up
R $CD26 DE On exit, holds the appropriate offset
C $CD26,1 Remember #REGhl.
C $CD27,3 Put the ID in #REGhl.
C $CD2A,5 Multiply by 32.
C $CD2F,1 Store it in #REGde.
C $CD30,2 Restore #REGhl and return.
b $CD32 Set to 0 if the bucket has been collected, or 1 if not
B $CD32,1,1
b $CD33 Timer for animating bucket
B $CD33,1,1
b $CD34 Animation frame for bucket
B $CD34,1,1
b $CD35 X co-ordinate of the miner
B $CD35,1,1
b $CD36 Animation frame for miner
B $CD36,1,1
b $CD37 Timer for animating miner
B $CD37,1,1
b $CD38 Squirrel direction
D $CD38 01 - right, #N$FF - left
B $CD38,1,1
b $CD39 X co-ordinate of the squirrel
B $CD39,1,1
b $CD3A Timer for animating squirrel
B $CD3A,1,1
b $CD3B Animation frame for the squirrel
B $CD3B,1,1
g $CD3C Set to 1 if the squirrel is dropping a nut
B $CD3C,1,1
g $CD3D Set to 0 if the nut is still falling, or #N$4F if it is exploding
B $CD3D,1,1
g $CD3E Current screen position of the nut dropped by the squirrel
B $CD3E,1,1
g $CD3F Timer for animating nut
B $CD3F,1,1
g $CD40 Animation frame for nut
B $CD40,1,1
c $CD41 Display the first (outdoor) room
D $CD41 Used by the routine at #R$940C.
C $CD41,10 Reset the "collected" flag on all coal.
C $CD4B,8 Set the miner in room 0 to invisible.
C $CD53,2 Set #REGa to 1 to set some flags.
C $CD55,3 Set no bucket collected.
C $CD58,3 Set miner's x co-ordinate to 1.
C $CD5B,6 Set Monty's position to #N$D8, #N$4F.
C $CD61,1 Turn off interrupts, so a new service routine can be used.
C $CD62,4 Point #REGi to the jump buffer at #R$C700.
C $CD66,6 Set the interrupt service routine to jump to #R$CDEF.
C $CD6C,5 Add a 'JP' command to the first byte.
C $CD71,2 Switch to interrupt mode 2 so this routine will be fired.
C $CD73,13 Clear the screen buffer.
C $CD80,3 #R$F14B points to the static UDGs on screen at #R$7C00.
C $CD83,3 Print the graphics.
C $CD86,3 Copy the graphic buffer to screen.
C $CD89,3 Print the score.
C $CD8C,3 Print number of lives.
C $CD8F,3 Copy the screen back to the buffer.
C $CD92,1 Turn interrupts on, the service routine can now be run.
C $CD93,5 Make #N$75 (bright cyan on yellow) a deadly attribute. (#R$C51A) so Monty will die if he touches the water under bridge.
C $CD98,3 Wait for interrupts and run one frame in the room.
C $CD9B,3 Check for collision.
C $CD9E,3 Check for player input.
C $CDA1,3 Update Monty's position.
C $CDA4,5 Is Monty's X co-ordinate the same as the bucket?
C $CDA9,3 If so, pick it up.
C $CDAC,5 Has Monty reached the far right of the room?
C $CDB1,2 Jump back if not.
N $CDB3 Monty has reached the far right of the room, so move into room 0.
C $CDB3,1 Disable interrupts as the service routine will be refreshed.
C $CDB4,4 Set the current room to 0.
C $CDB8,6 Set the current position to #N$18, #N$27 ie: in front of the miner.
C $CDBE,3 Make this the start position if a life is lost.
C $CDC1,3 Enter the new room.
c $CDC4 Monty has grabbed the bucket - start the miner chase
D $CDC4 Used by the routine at #R$CD41.
C $CDC4,4 Has the flag already been set?
C $CDC8,1 Return if so.
C $CDC9,10 Set all the coal flags as "not collected".
C $CDD3,8 Set the miner to appear in room 0.
N $CDDB Erase the bucket.
C $CDDB,4 Signal that Monty has the bucket.
C $CDDF,3 #R$7780 is the empty graphic.
C $CDE2,3 Set the graphic to draw.
C $CDE5,6 Set co-ordinate of the bucket.
C $CDEB,4 Draw (erase) the graphic and return.
c $CDEF Interrupt routine for first room
C $CDEF,8 Cache all working registers.
C $CDF7,7 Get the location of the water under the bridge.
C $CDFE,2 Width of the water is 7.
C $CE00,3 Animate the water.
C $CE0C,3 Animate the smoke from the chimney.
C $CE0F,8 Restore registers.
C $CE17,2 Re-enable interrupts and return.
g $CE19 Frame counter (when zero, background animation happens)
B $CE19,1,1
> $CE1B ; Unused
> $CE1B $CE1A DEFB $87
u $CE1B Unused
C $CE1B,177
u $CECC Unused
B $CECC,1,1
c $CECD Unused
D $CECD Used by the routine at #R$CE1B.
u $CEEF Unused
D $CEEF Used by the routine at #R$CE1B.
C $CEEF,61
s $CF2C Unused
S $CF2C,40,$28
g $CF54 Screen attribute buffer
B $CF54,768,8
c $D254 Copy the screen to storage buffer
D $D254 Used by the routines at #R$8D7F, #R$952F, #R$9551, #R$CD41 and #R$D290.
C $D254,12 Copy #N$1800 bytes from the screen to #R$D260.
c $D260 Save game to tape
D $D260 Once the intro tune has played, this area to EA5F becomes the screen buffer
D $D260 Control continues to #R$D290
C $D260,11 Put the "death" tune somewhere where it won't be overwritten.
C $D26B,11 Put the "game won" message where it won't be overwritten.
C $D276,13 Clear the screen attribute buffer to zero.
C $D283,13 Call the ROM save routine.
c $D290 Main entry point
D $D290 When the game has loaded, the ROM loading routine returns to here
C $D290,13 This does nothing except waste a bit of time.
C $D29D,4 Point to the start of the theme tune (#R$D5B9).
C $D2A1,6 Put the pitch in DE.
C $D2A7,6 Put the length in HL.
C $D2AD,5 If the length is 0, don't play a note, but pause instead.
C $D2B2,7 Play the #HTML(<a href="https://skoolkid.github.io/rom/asm/03B5.html">BEEP routine in the ROM</a>).
C $D2B9,5 Move onto the next note.
C $D2BE,7 If the second byte of the pitch is #N$FF , the tune is finished, so move on.
C $D2C5,6 See if a key was pressed.
C $D2CB,2 If no key pressed, then loop back to play another note.
C $D2CD,2 Otherwise, move on.
N $D2CF At this point, there is a rest in the tune.
C $D2CF,4 Pause for the relevant amount of time.
C $D2D3,2 Loop back for another note.
N $D2D5 The tune has finished, or was stopped by pressing a key.
C $D2D5,4 Load #R$F7D6 (start a new game) on the stack so the call to #R$D254 will return here.
C $D2D9,13 Clear the screen.
C $D2E6,3 Copy the screen to the working buffer, then jump to #R$D254.
u $D2E9 Unused
B $D2E9,720,8
b $D5B9 Colonel Bogey tune data
D $D5B9 Used by the routine at #R$D290.
D $D5B9 Each entry is 4 bytes - first two are pitch, second two are length.
D $D5B9 This data is wiped as soon as the game proper starts as it becomes part of the screen buffer.
B $D5B9,1096,4
u $DA01 Unused
D $DA01 Holds part of a capture of a screen image of Room 00. Clearly used in debugging and overwritten later. #SCR2,0,0,32,17,$DA00,$CF54(screen_capture)
B $DA01,4191,7,8
w $EA60 Offsets from character to relative screen positions
W $EA60,384,2
c $EBE0 Print an animinated object on screen
D $EBE0 Used by the routines at #R$8751, #R$8B34, #R$8D7F, #R$8EDD, #R$952F, #R$968D, #R$96D9, #R$CB93 and #R$CDC4.
C $EBE0,3 Get the X co-ordinate at #R$ECDE.
N $EBE3 Get the position and work out what frame number should be used, shifting the bits to the desired location.
C $EBE3,2 Take the first three bits to get the frame number.
C $EBE5,2 Is it greater than 4?
C $EBE7,2 Skip the next bit if it is.
C $EBE9,5 Shift the sprite to the left and move forward.
C $EBEE,2 Is the frame 0?
C $EBF0,2 Skip the next bit if it is.
C $EBF2,3 Shift the sprite to the right.
N $EBF5 Now work out where on screen should be updated.
C $EBF5,3 Get the co-ordinates
C $EBF8,12 Put the top five bits in #REGhl.
C $EC04,3 Store this as the next offset to use.
C $EC07,3 Get the Y co-ordinate at #R$ECDF.
C $EC0A,3 Store this in #REGde.
C $EC0D,5 Add the base offset for the screen address table in #R$EA60.
C $EC12,3 Store this as the pointer to the screen that should be updated.
N $EC15 Copy the bytes from the working buffer onto screen.
C $EC15,3 Point #REGde at the working buffer at #R$ECE4.
C $EC18,3 16 cells to copy.
C $EC1B,3 Get the pointer to the screen address to update.
C $EC1E,4 Get the actual screen address in #REGhl.
C $EC22,1 Remember #REGde which points at the working buffer.
C $EC23,4 Get the offset to use.
C $EC27,1 Add this to get the actual screen address to use in #REGhl.
C $EC28,1 Restore #REGde.
C $EC29,2 3 cells to copy.
C $EC2B,4 Copy the cells from the buffer to screen.
C $EC2F,3 Merge the bytes.
C $EC32,2 Move to the next cell.
C $EC34,2 Loop back if there is more to do.
C $EC36,8 Move to the previous screen address.
C $EC3E,3 Loop back if there are more cells to copy.
C $EC41,21 Point #REGhl at the next pointer to the screen address table.
C $EC56,3 Loop back until all the cells have been copied.
> $EC65 ; Merge a byte from the screen buffer onto screen.
> $EC65 ;
> $EC65 ; Used by the routine at #R$EBE0.
> $EC65 *$EC59 PUSH HL       ; { Remember #REGhl and #REGde.
> $EC65  $EC5A PUSH DE       ; }
> $EC65  $EC5B LD DE,$9260   ; { Add an offset from the screen address to the buffer at #R$D260.
> $EC65  $EC5E ADD HL,DE     ; }
> $EC65  $EC5F LD A,(HL)     ; Get the graphic data.
> $EC65  $EC60 POP DE        ; { Restore #REGhl and #REGde.}
> $EC65  $EC61 POP HL        ;
> $EC65  $EC62 OR (HL)       ; Merge the set bits in the buffer with that on sreen.
> $EC65  $EC63 LD (HL),A     ; { Store it and return.
> $EC65  $EC64 RET           ; }
u $EC65 Unused
C $EC65,10
c $EC6F Shift a sprite to the right and copy it into a working buffer
D $EC6F Used by the routine at #R$EBE0.
R $EC6F A Current frame number
C $EC6F,3 Store the frame number.
C $EC72,3 Put the address of the temporary store in #REGhl.
C $EC75,4 Put the next graphic to print in #REGde.
C $EC79,2 16 pairs of cells to copy.
C $EC7B,4 Copy the byte from the graphic entry to the temporary store.
C $EC7F,2 Move to the next cell.
C $EC81,4 Copy the byte from the graphic entry to the temporary store.
C $EC85,2 Move to the next cell.
C $EC87,2 Erase it.
C $EC89,1 Move to the next cell.
C $EC8A,2 Loop back while there is more to copy.
C $EC8C,3 Get the frame number.
C $EC8F,2 Store this in #REGb.
C $EC91,3 Put the address of the temporary store in #REGhl.
C $EC94,2 #N$30 cells to copy.
C $EC96,1 Get the data from screen.
C $EC97,1 Shift it right.
C $EC98,1 Store #REGaf.
C $EC99,1 Set the data back.
C $EC9A,1 Move to the next cell.
C $EC9B,1 Restore #REGaf.
C $EC9C,2 Loop back if there are more cells.
C $EC9E,4 Loop back until we get the right frame number to copy.
c $ECA2 Shift a sprite to the left and copy it into a working buffer
D $ECA2 Used by the routine at #R$EBE0.
C $ECA2,3 Store the current frame number.
C $ECA5,3 Point #REGhl to the temporary store.
C $ECA8,4 Point #REGde to the next graphic to print.
C $ECAC,2 (16) pairs of cells to copy.
C $ECAE,2 Clear the first cell.
C $ECB0,1 Move to the next cell.
C $ECB1,4 Copy it from the graphic entry to the temporary store.
C $ECB5,2 Move to the next cell.
C $ECB7,4 Copy the byte from the graphic entry to the temporary store.
C $ECBB,2 Move to the next cell.
C $ECBD,2 Loop while there is more to copy.
C $ECBF,3 Get the frame number.
C $ECC2,1 Store this in #REGb.
C $ECC3,3 Return if the frame is 0 - no update needed.
C $ECC6,4 Invert the number of cells to update.
C $ECCA,1 Store #REGbc
C $ECCB,3 Point #REGhl to the back of the buffer.
C $ECCE,2 #N$30 cells to update.
C $ECD0,1 Get the next byte.
C $ECD1,1 Shift it to the left.
C $ECD2,1 Store #REGaf.
C $ECD3,1 Set the data back.
C $ECD4,1 Move to the previous cell.
C $ECD5,1 Restore #REGaf.
C $ECD6,2 Loop back if there are more cells.
C $ECD8,4 Loop back until we get the right frame number to copy.
g $ECDC Frame number of the next sprite to update
D $ECDC Used by the routines in #R$EC6F and #R$ECA2.
B $ECDC,1,1
u $ECDD Unused
B $ECDD,1,1
g $ECDE X co-ordinate of next sprite to update
D $ECDE Used by the routines in #R$EC6F and #R$ECA2.
B $ECDE,1,1
g $ECDF Y co-ordinate of next sprite to update
D $ECDF Used by the routines in #R$EC6F and #R$ECA2.
B $ECDF,1,1
g $ECE0 Address of next sprite to update
D $ECE0 Used by the routines in #R$EC6F and #R$ECA2.
W $ECE0,2,2
g $ECE2 Pointer to position on screen to update
D $ECE2 Used by the routines in #R$EC6F and #R$ECA2.
N $ECE2 This is an entry in the screen buffer table at #R$EA60.
W $ECE2,2,2
g $ECE4 Working buffer for moving sprites
B $ECE4,48,8
> $ED16  ; Screen address offset to use when updating sprites.
> $ED16  ;
> $ED16  ; Used by the routine at #R$EBE0.
> $ED16  g$ED14 DEFW $000D
u $ED16 Unused
C $ED16,24
u $ED2E Unused
B $ED2E,32,8
b $ED4E Chimney smoke for start room
D $ED4E #UDGARRAY5,7,4,5($ED4E-$ED52;$ED76-$ED7A;$ED9E-$EDA2)(smoke_a*) #UDGARRAY5,7,4,5($EDC6-$EDCA;$EDEE-$EDF2;$EE16-$EE1A)(smoke_b*) #UDGARRAY5,7,4,5($EE3E-$EE42;$EE66-$EE6A;$EE8E-$EE92)(smoke_c*) #UDGARRAY5,7,4,5($EEB6-$EEBA;$EEDE-$EEE2;$EF06-$EF0A)(smoke_d*) #UDGARRAY*(smoke_a;smoke_b;smoke_c;smoke_d)(smoke)
B $ED4E,480,8
c $EF2E Animate the smoke in the start room
D $EF2E Used by the routine at #R$CDEF.
C $EF2E,2 X = #N$A7
C $EF30,2 Y = 0
C $EF32,3 #R$EA60 is the screen offsets table.
C $EF35,2 Get the correct screen address.
C $EF37,3 Store this. (#R$EF7A).
C $EF3A,2 #N18 characters to draw.
N $EF3C Draw each character in the correct frame.
C $EF3C,1 Remember this.
C $EF3D,4 Put the screen address in #REGhl.
C $EF41,5 Move down a row and store the result in #REGde.
C $EF46,3 Get the pointer to the graphic.
C $EF49,3 5 bytes to copy to screen.
C $EF4C,2 Do the copy.
C $EF4E,3 Store the next address to copy.
C $EF51,8 Move back a screen address.
C $EF59,1 Restore count of characters to draw.
C $EF5A,2 Loop back if there is more to do.
N $EF5C All characters are now drawn.
C $EF5C,3 Get the frame counter.
C $EF5F,1 Move to the next counter.
C $EF60,2 Is this the last frame?
C $EF62,2 If not, jump forward.
C $EF64,3 Otherwise reset back to the first frame.
C $EF67,4 Store the new frame and return.
c $EF6B Initialize smoke animation in the start room
D $EF6B Used by the routine at #R$EF2E.
C $EF6B,6 Point to the first frame of the graphic.
C $EF71,5 Set the frame counter to the first one.
w $EF77 Pointer to smoke animation graphic
W $EF77,2,2
g $EF79 Frame number for smoke animation graphic
B $EF79,1,1
w $EF7A Screen offset address to draw the smoke animation graphic
D $EF7A This is an entry in the table starting at #R$EA60.
W $EF7A,2,2
u $EF7C Unused
S $EF7C,2,$02
c $EF7E Set up graphics for the start room
D $EF7E Used by the routine at #R$CD41.
R $EF7E HL Pointer to start room data (#R$F14B)
C $EF7E,3 Store the pointer to start room data.
C $EF81,4 Get the address from this and put it in #REGhl.
C $EF85,3 Store this.
C $EF88,3 Get the data pointer.
C $EF8B,2 Go to the next address, which has the UDGs.
C $EF8D,3 Store this.
C $EF90,4 Start at row 2 column 2.
C $EF94,4 Set this as the current position.
C $EF98,2 #N$14 rows
C $EF9A,1 Store this.
C $EF9B,2 #N$1C columns
C $EF9D,4 Get the next position.
C $EFA1,1 Remember #REGbc
C $EFA2,3 Get the next data.
C $EFA5,1 Get the byte.
C $EFA6,4 Move to the next address and store it.
C $EFAA,3 Print the graphic
C $EFAD,3 Loop until all the columns for this row are done.
C $EFB0,1 Restore #REGbc
C $EFB1,9 Move to the next row.
C $EFBA,3 Loop until all the rows are done.
c $EFBD Draw static UDGs on the start room
D $EFBD Used by the routine at #R$EF7E.
R $EFBD HL Pointer to graphic IDs
R $EFBD A Character to print
R $EFBD D Y position
R $EFBD E X position
R $EFBD B Current row count
C $EFBD,4 Store all registers being used.
C $EFC1,4 If the character is #N80 or above, move forward.
N $EFC5 This is an ordinary character in the ROM
C $EFC5,3 Put the character in #REGhl.
C $EFC8,3 Multiply by 8 to get the correct offset.
C $EFCB,3 Add the base address for the ROM character set.
N $EFCE Now print the character
C $EFCE,1 }
C $EFCF,3 Store the current address being printed.
C $EFD2,5 Convert the Y position to a screen offset.
C $EFD7,3 Put this in #REGhl.
C $EFDA,3 Multiply by 8 to get the correct offset.
C $EFDD,4 Add an offset of 7 to point at the bottom of the graphic.
C $EFE1,6 Add the base address for the screen address buffer.
C $EFE7,3 Store this.
C $EFEA,2 Print 8 rows.
C $EFEC,4 Put the actual screen address in #REGhl.
C $EFF0,1 Restore the X co-ordinate.
C $EFF1,1 Store it again.
C $EFF2,3 Add it to the screen address.
C $EFF5,4 Convert this into an address in the screen buffer.
C $EFF9,1 Get the byte.
C $EFFA,4 Move to the next data position and store it.
C $EFFE,1 Restore #REGhl.
C $EFFF,1 Set the byte.
C $F000,8 Move the current screen address up a row.
C $F008,2 Loop until all rows have been printed.
C $F00A,2 Restore #REGde and #REGhl.
C $F00C,6 Get an offset to the attribute buffer.
C $F012,1 Move up a row.
C $F013,1 Restore #REGde.
C $F014,1 Store it again.
C $F015,5 Put the Y co-ordinate in #REGhl.
C $F01A,5 Multiply 2^5 times ie: 32 to get an appropriate address.
C $F01F,1 Store #REGde.
C $F020,4 Add the X co-ordinate.
C $F024,4 Add the base address of the attribute buffer.
C $F028,1 Restore #REGde.
C $F029,4 Copy the graphic data.
C $F02D,1 Restore #REGde
C $F02E,1 Move to the next row.
C $F02F,4 Restore all registers and return.
N $F033 This is a custom character
C $F033,2 Subtract #N$80 to get the real value.
C $F035,3 Put this in #REGhl.
C $F038,3 Multiply by 8 to get an offset in the screen buffer.
C $F03B,4 Get the start of the graphics.
C $F03F,2 Print the character.
w $F041 Pointer to start room data
W $F041,2,2
w $F043 Pointer to start room UDGs
W $F043,2,2
g $F045 Current position drawing the start room
W $F045,4,4
g $F047 Address of UDG currently being printed in the start room
W $F047,2,2
g $F049 Screen position to draw the next UDG in the start room
D $F049 This is an offset relative to #R$EA60.
W $F049,2,2
b $F04B End message
D $F04B WHY DID MONTY DIE TO FAST
D $F04B AREN'T 3 LIVES ENOUGH TO LAST
D $F04B THE HAZARDS THAT CONFRONT A MOLE
D $F04B IN SEARCH FOR HIS PRECIOUS COAL
D $F04B DON'T LET MONTY DIE IN VAIN
D $F04B PRESS A KEY AND TRY AGAIN
B $F04B,176,8
u $F0FB Unused
C $F0FB,58
u $F135 Unused
B $F135,22,8*2,6
w $F14B Pointer to start room UDG data
W $F14B,2,2
b $F14D UDGs for start room
D $F14D #UDGS28,20,2(startroom)(#UDGSADDR($y,$x)(*udg)udg)
B $F14D,560,8
b $F37D Attributes for start room
B $F37D,560,8
u $F5AD Unused
B $F5AD,160,8
c $F64D See if Monty has picked up enough coal to open a blocking wall
D $F64D Used by the routine at #R$F7C7.
N $F64D First, work out how much coal has been collected.
C $F64D,1 Start the count of coal items at 0.
C $F64E,3 Look at the buffer at #R$964D.
C $F651,2 #N$40 items to look at.
C $F653,3 Has the next bit of coal been collected?
C $F656,2 No, so move on.
C $F658,1 Otherwise, increment the count of collected coal.
C $F659,2 Loop back round to look at the next coal data.
C $F65B,3 Set this as the number of collected coal pieces.
N $F65E Now, get the wall flags.
C $F65E,4 Set #REGix to the wall flags at #R$F7D1.
C $F662,2 Have 16 pieces of coal being collected?
C $F664,2 Jump if so.
C $F666,2 Have 32?
C $F668,2 Jump if so.
C $F66A,2 Have 48?
C $F66C,2 Jump if so.
C $F66E,2 Have 64?
C $F670,1 Return if not.
N $F671 Handle collecting 64 pieces of coal.
N $F678 There are no walls in this room.
C $F678,5 Reset the flag and exit.
N $F67D Handle collecting 64 pieces of coal (2).
N $F682 Handle collecting 16 pieces of coal.
C $F682,5 Is Monty in room 6?
C $F687,2 Exit if not.
C $F689,4 Set bit 5 (room 6)
N $F68E Handle collecting 32 pieces of coal.
N $F69A Handle collectiong 48 pieces of coal.
c $F6A6 Hide any blocking walls if sufficient coal has been picked up
D $F6A6 Used by the routine at #R$F7C7.
C $F6A6,1 Turn off interrupts.
C $F6A7,4 Point #REGix at the data for disappearing walls at #R$F7D1.
C $F6AB,3 Get the current room (#R$9649).
C $F6AE,2 Is it room #N$06?
C $F6B0,2 Yes, so jump forward.
C $F6B2,2 It is room #N$0B?
C $F6B4,2 Yes, so jump forward.
C $F6B6,2 Is it room #N$0F?
C $F6B8,2 Yes, so jump forward.
C $F6BA,2 Is it room #N$14?
C $F6BC,2 No, so jump forward.
N $F6BE Handle wall in room #N$14.
N $F6C8 Hide the wall if enough coal is collected.
C $F6C8,4 Is there a wall here?
C $F6CC,3 Hide if it there is.
N $F6D0 Handle wall in room #N$06.
C $F6D0,2 Set #REGc to the length.
C $F6D2,3 Set #REGhl to the position.
C $F6D5,5 Return if the wall shouldn't be opened yet.
C $F6DA,2 Jump forward to open it.
N $F6DC Handle wall in room #N$0B.
C $F6DC,2 Set #REGc to the length.
C $F6DE,3 Set #REGhl to the position.
C $F6E1,5 Return if the wall shouldn't be opened yet.
C $F6E6,2 Jump forward to open it.
N $F6E8 Handle wall in room #N$0F.
C $F6E8,2 Set #REGc to the length.
C $F6EA,3 Set #REGhl to the position.
C $F6ED,5 Return if the wall shouldn't be opened yet.
C $F6F2,2 Jump forward to open it.
N $F6F4 Handle any other room.
C $F6F4,9 Turn off bits 0, 1, 6 and 7 on the wall flags and return.
c $F6FD Erase a wall from the screen
D $F6FD Used by the entry point at #R$F71A.
R $F6FD H Y co-ordinate
R $F6FD L Number of rows
R $F6FD IY Pointer to the store of static characters
C $F6FD,3 Subtract the Y co-ordinate from the screen height.
C $F700,4 Put this in #REGhl.
C $F704,2 Multiply this by 4 to get an attribute of an offset.
C $F706,4 Add the base address of attributes to get the right address.
C $F70A,4 Add the X co-ordinate.
C $F70E,3 Increase by 32 characters for each row.
C $F711,1 Set #REGb to the number of rows.
C $F712,3 Get the attribute for character 0 (empty space).
C $F715,1 Set it on screen here.
C $F716,1 Move to the next row.
C $F717,3 Repeat for the number of rows until done.
c $F71A Hide a wall after enough coal has been collected
D $F71A Used by the entry point at #R$F6A6.
R $F71A H Y co-ordinate
R $F71A L X co-ordinate
R $F71A C Width
R $F71A IX Pointer to wall flags at #R$F7D1.
C $F71A,1 Remember #REGhl and #REGbc
C $F71C,3 Get the current frame number.
C $F71F,9 Subtract it from the base Y co-ordinate and store in #R$F7D2 and #R$F7D3.
C $F728,1 Put the number of characters in #REGb.
C $F729,5 Convert the Y co-ordinate to a offset for a screen address.
C $F72E,4 Add to the base pointer at #R$EA60 to get a screen address.
C $F732,4 Put the screen address in #REGhl.
C $F736,4 Add the X co-ordinate.
C $F73A,2 Erase the character.
C $F73C,6 Also erase it in the screen buffer (#R$9260).
C $F742,3 Get the wall position.
C $F745,4 Move to the next position by subtracting 8 from the Y co-ordinate.
C $F749,3 Set this as the new position.
C $F74C,2 Loop back if there are more characters to do.
C $F74E,3 Get current frame number.
C $F751,3 Increment it, but if this reaches 8, reset to 0.
C $F754,2 Restore co-ordinates and width.
C $F756,4 Store next frame number and return if it is 0.
N $F75A Erase the wall from the set of graphics, and change it to mid-air.
C $F75A,4 #R$C54E is the store of static graphics for this room.
C $F75E,3 Erase the wall.
C $F761,4 Clear the flag to mark a wall as being erased.
C $F765,3 Get the current room (#R$9649).
C $F768,2 Is it #N06?
C $F76A,2 Jump forward if not.
C $F76C,5 Set the wall as cleared and return.
C $F771,2 Is this room #N0B?
C $F773,2 Jump forward if not.
C $F775,5 Set the wall as cleared and return.
C $F77A,2 Is this room #N0F?
C $F77C,2 Jump forward if not.
C $F77E,5 Set the wall as cleared and return.
C $F783,5 Must be room #N14. Set the wall as cleared and return.
u $F788 Unused
C $F788,63
c $F7C7 Perform interrupt handler background updates
D $F7C7 Used by the routine at #R$8F9F.
C $F7C7,3 Update moving platforms.
C $F7CA,3 Check how much coal has been collected.
C $F7CD,3 Hide walls if enough coal has been collected.
g $F7D1 Flags to indicate which blocking walls can open
D $F7D1 If the appropriate bit is set, the wall will open. #TABLE( default, center ) { =h Bit | =h Room } { 0 | If set, there is no wall to remove } { 1 | } { 2 | Room #N$14 } { 3 | Room #N$0F } { 4 | Room #N$0B } { 5 | Room #N$06 } { 6 | } { 7 | } TABLE#
B $F7D1,1,1
g $F7D2 Y co-ordinate for the disappearing wall
B $F7D2,1,1
g $F7D3 X co-ordinate for the disappearing wall
B $F7D3,1,1
g $F7D4 Timer state for the disappearing wall
D $F7D4 Start at 0 and increments as the wall disappears.
B $F7D4,1,1
g $F7D5 Number of pieces of coal that have been collected
B $F7D5,1,1
c $F7D6 Start a new game
D $F7D6 Used by the routine at #R$F858.
C $F7D6,1 Set A to 0 to clear some flags.
C $F7D7,1 Disable interrupts.
C $F7D8,3 Set position on ground (#R$848F) to 0.
C $F7DE,3 Set distance fallen (#R$8D58) to 0.
C $F7E1,3 Set room flags (#R$8D52) to 0.
C $F7E4,3 Set game flags (#R$8D53) to 0.
C $F7E7,3 Set wall flags (#R$F7D1) to 0.
C $F7EA,5 Set 3 lives (#R$964A).
C $F7EF,10 Set score (#R$9217) to 0.
C $F7F9,5 Set current room to #N$2C (outside).
C $F7FE,3 Set the pointer to the movement table to #R$869C.
C $F804,13 Clear the screen.
C $F811,3 Display the control options.
C $F814,3 Enter the first room.
c $F817 Print the "game over" message and start a new game
D $F817 Used by the routine at #R$946E.
C $F817,1 Disable interrupts.
C $F818,3 Point #REGhl to the start of the screen.
C $F81B,4 Restore IY.
C $F81F,2 Turn IM1 back on.
C $F821,1 Re-enable interrupts.
C $F822,10 Clear the screen.
C $F82C,3 Print the score
C $F82F,4 Point #REGix at the "game over" message.
C $F83D,13 Display bright yellow on black.
C $F84A,3 Display the message.
C $F84D,1 No effect.
C $F84E,5 Start drawing at column 5.
C $F853,2 Time to pause at the end.
C $F855,3 Jump forward to close the message.
c $F858 Print the "game won" message and start a new game
D $F858 Used by the routine at #R$940C.
N $F85D This entry point is used by the routine at #R$F817.
C $F85D,6 Wait for a key to be pressed.
C $F863,2 If a key was pressed, jump forward.
C $F865,4 Pause and repeat if there are more attempts required.
C $F869,3 Restart the game.
u $F86C Unused
B $F86C,442,8*55,2
u $FA26 Unused
C $FA26,13
u $FA33 Unused
C $FA33,13
u $FA40 Unused
C $FA40,13
u $FA4D Unused
C $FA4D,26
u $FA67 Unused
C $FA67,16
u $FA77 Unused
C $FA77,72
u $FABF Unused
D $FABF Used by the routine at #R$FAEE.
C $FABF,47
u $FAEE Unused
C $FAEE,31
u $FB0D Unused
C $FB0D,33
u $FB2E Unused
C $FB2E,16
u $FB3E Unused
C $FB3E,96
u $FB9E Unused
D $FB9E Used by the routine at #R$FDB9.
C $FB9E,22
u $FBB4 Unused
C $FBB4,18
N $FBC6 This entry point is used by the routine at #R$8866.
C $FBC6,3
C $FBC9,3 Get the attribute address.
C $FBCC,33
c $FBED Fill a sprite with an attribute
D $FBED Used by the routines at #R$8866 and #R$FBB4.
R $FBED H Y co-ordinate
R $FBED L X co-ordinate
R $FBED C attribute to fill
C $FBED,3 Get the attribute address
C $FBF0,4 Put the attribute in the first two columns.
C $FBF4,4 Move to the start of the next row.
C $FBF8,3 Put the attribute in the next two columns.
c $FBFC Fill three rows with an attribute
D $FBFC Used by the routine at #R$8751.
R $FBFC C Attribute to fill
C $FBFC,2 Three rows.
C $FBFE,1 Put the attribute in A.
C $FBFF,3 Place to move to in the next row.
C $FC02,3 Set the attribute.
C $FC05,1 Move to the next row.
C $FC06,2 Jump back if there are more rows.
> $FC18 ; Fill two rows with an attribute
> $FC18 ;
> $FC18 ; Used by the routine at #R$8751.
> $FC18 ;
> $FC18 ; C Attribute to fill
> $FC18 *$FC09 LD B,$02       ; Two rows.
> $FC18  $FC0B LD A,C         ; Put the attribute in A.
> $FC18  $FC0C LD DE,$001E    ; Place to move to in the next row.
> $FC18 *$FC0F LD (HL),A      ; { Set the attribute.
> $FC18  $FC10 INC HL         ;
> $FC18  $FC11 LD (HL),A      ;
> $FC18  $FC12 INC HL         ;
> $FC18  $FC13 LD (HL),A      ; }
> $FC18  $FC14 ADD HL,DE      ; Move to the next row.
> $FC18  $FC15 DJNZ $FC0F     ; Jump back if there are more rows.
> $FC18  $FC17 RET            ;
c $FC18 Convert a co-ordinate to an attribute address.
D $FC18 Used by the routines at #R$FBB4 and #R$FBED.
R $FC18 H Y co-ordinate
R $FC18 L X co-ordinate
R $FC18 HL On exit, holds an attribute address
C $FC18,1 Get the Y co-ordinate.
C $FC19,11 Convert it to a screen address and put it in #REGd.
C $FC24,1 Get the X co-ordinate.
C $FC25,7 Convert it to a screen address and put it in #REGe.
C $FC2C,2 Put the Y co-ordinate screen address in #REGhl.
C $FC2F,5 Multiply by 16 to get an appropriate offset to the attributes buffer.
C $FC34,3 Add the X co-ordinate screen offset.
C $FC37,5 Add the base of the attribute buffer and return.
u $FC3C Unused
C $FC3C,46
u $FC6A Unused
C $FC6A,47
u $FC99 Unused
D $FC99 Used by the routine at #R$FC6A
C $FC99,27
u $FCB4 Unused
D $FCB4 Used by the routine at #R$FB3E
C $FCB4,39
u $FCDB Unused
D $FCDB Used by the routine at #R$FB3E
C $FCDB,24
u $FCF3 Unused
D $FCF3 Used by the routine at #R$FB9E
C $FCF3,136
s $FD7B Unused
S $FD7B,32,$20
c $FD9B Generate a random time for the crusher
D $FD9B Used by the routines at #R$8751 and #R$8DCD.
R $FD9B BC On return, holds new crusher time
C $FD9B,4 Put the previous value in #REGde.
C $FD9F,20 Do some arithmetic to get a new value.
C $FDB3,3 Set the new value in #R$5C76.
C $FDB6,2 Copy this to #REGbc and return.
u $FDB9 Unused
D $FDB9 Used by the routine at #R$FB3E.
C $FDB9,28
c $FDD5 Print all static characters in the current room
D $FDD5 Used by the routine at #R$9551.
C $FDD5,3 Starting position, top left.
C $FDD8,4 #R$C42A - static characters table
C $FDDC,4 Set #REGiy to the second line in the screen attribute buffer (#R$CF54).
C $FDE0,2 Draw #N$14 lines.
C $FDE2,1 Remember this.
C $FDE3,3 Draw a line.
C $FDE6,1 Restore number of lines.
C $FDE7,2 Loop if there are more lines to draw.
C $FDE9,1 Otherwise return.
c $FDEA Print a line of characters in a room
D $FDEA Used by the routine at #R$FDD5.
R $FDEA IX pointer to the character data
N $FDEA The characters are a series of 3-bit numbers (0-7) packed contiguously into bytes. To extract the relevant character, the appropriate bits need to be taken from every 3 byte sequence, which contains 8 characters. #TABLE (default, center) { =h Bytes | =h Bits | =h Character number } { 0 | 5 - 7 | 0 } { 0 | 2 - 4 | 1 } { 0 - 1 | 0 - 1, 7 | 2 } { 1 | 4 - 6 | 3 } { 1 | 1 - 3 | 4 } { 1 - 2 | 0, 6 - 7 | 5 } { 2 | 3 - 5 | 6 } { 2 | 0 - 2 | 7 } TABLE#
C $FDEA,2 Four sets of 3-byte sequences for each line.
C $FDEC,3 Get the first byte.
C $FDEF,3 Put the top three bits in the bottom.
C $FDF2,3 Print the character.
C $FDF5,3 Get the first byte.
C $FDF8,2 Put bits 2-4 in the bottom.
C $FDFA,3 Print the character.
C $FDFD,6 Put the first byte in #REGa and the second in #REGc.
C $FE03,3 Get the top bit of the second byte and the bottom two bits of the first.
C $FE06,3 Print the character.
C $FE09,3 Get the second byte.
C $FE0C,4 Put bits 4-6 in the bottom.
C $FE10,3 Print the character.
C $FE13,3 Get the second byte.
C $FE16,1 Put bits 1-3 in the bottom.
C $FE17,3 Print the character.
C $FE1A,6 Put the first byte in #REGa and the second in #REGc.
C $FE20,6 Get the top two bit of the third byte and the bottom bit of the second.
C $FE26,3 Print the character.
C $FE29,3 Get the third byte.
C $FE2C,3 Put bits 3-5 in the bottom.
C $FE2F,3 Print the character.
C $FE32,3 Get the byte byte; the bottom 3 bits will have the last character.
C $FE35,3 Print the character.
C $FE38,6 Move to the next block.
C $FE3E,3 Repeat until all characters in the line are printed.
c $FE41 Print a character in the room
D $FE41 Used by the routine at #R$FDEA.
R $FE41 A Character to draw is in bits 0-3
R $FE41 H Y co-ordinate
R $FE41 L X co-ordinate
C $FE42,2 The bottom 3 bits contain the relevant character.
C $FE44,1 Remember this.
C $FE45,4 Shift by 8 to get an offset in the graphics table.
C $FE49,1 Remember screen position.
C $FE4A,3 Put the offset in #REGde.
C $FE4D,3 #R$C54E is the static character graphics table.
C $FE50,2 Get the right offset and put it in #REGde.
C $FE52,1 Restore screen position.
C $FE53,1 Remember screen position.
C $FE54,1 Put X co-ordinate in #REGc.
C $FE55,4 Double Y co-ordinate to get a word offset.
C $FE59,1 Remember address of character.
C $FE5A,3 #R$EA60 is the screen offsets table.
C $FE5D,5 Put the appropriate screen position in #REGhl.
N $FE62 Now copy the found graphic into the screen buffer. The first byte contains the attribute.
C $FE62,4 Add this value to convert a screen address into an offset from #R$D260.
C $FE66,2 Set #REGb to 0 so #REGbc can be used an offset.
C $FE68,1 Restore address of character.
C $FE69,1 Add the X offset so #REGhl now points to the right place in the screen buffer.
C $FE6A,4 Copy the next attribute and store it.
C $FE6E,1 Move onto the next byte.
N $FE6F Now copy the pixel data.
C $FE6F,2 8 rows to copy.
C $FE71,2 Copy this row.
C $FE73,1 Move to the next row.
C $FE74,1 Move to the next graphic byte.
C $FE75,2 Loop while there is more to do.
C $FE77,2 Move to the next attribute address.
C $FE79,2 Restore #REGhl and #REGbc.
C $FE7B,1 Move to the next column.
C $FE7C,3 Have we reached the end of a column?
C $FE7F,1 Return if not. Having reached the end of a column, need to point to the right place.
C $FE80,1 Set the column back to 0.
C $FE81,4 Move to the next segment on screen.
C $FE85,1 Return.
u $FE86 Unused
C $FE86,9
c $FE8F Convert a screen address to a buffer address and store it
D $FE8F Used by the routine at #R$EFBD.
R $FE8F DE Screen address
C $FE8F,4 Add the offset so the address is in the buffer starting at #R$D260
C $FE93,1 Put this in #REGde.
C $FE94,3 Put the buffer address in #R$F047.
s $FE98 Unused
S $FE98,10,$0A
c $FEA2 Check the attribute at the current position matches the "moving" type
D $FEA2 Used by the routine at #R$8B90.
C $FEA2,4 Put the expected attribute in #REGb.
C $FEA6,3 Get the position (#R$5C7B, #R$5C7C).
C $FEA9,5 Move up one row and across one column.
C $FEAE,3 Get the attribute at this position.
C $FEB1,1 Does it match?
C $FEB2,1 Return if it does.
C $FEB3,3 Get the position (#R$5C7B, #R$5C7C).
C $FEB6,5 Move down one row and across one column.
C $FEBB,3 Get the attribute at this position.
C $FEBE,1 Does it match?
C $FEBF,1 Return with the zero flag set if it does.
c $FEC0 Get the attribute at the specified position
D $FEC0 Used by the routine at #R$FEA2.
R $FEC0 H Y co-ordinate
R $FEC0 L X co-ordinate
R $FEC0 A On return, holds the attribute
C $FEC0,1 Remember #REGbc.
C $FEC1,7 Put the top 5 bits of the X co-ordinate in #REGc.
C $FEC8,7 Put the top 5 bits of the Y co-ordinate in #REGb.
C $FECF,5 Convert the Y co-ordinate into a screen offset.
C $FED4,8 Multiply this by 32 to get a particular row offset on screen.
C $FEDC,4 Add the X co-ordinate.
C $FEE0,4 Add the base address of the attribute buffer.
C $FEE4,1 Put the attribute in A.
C $FEE5,2 Restore #REGbc and return.
s $FEE7 Unused
S $FEE7,25,$19
c $FF00 Set control option and reset IY
D $FF00 Used by the routine at #R$8000.
C $FF00,3 Set the control option in #R$82A3.
C $FF03,5 Set #REGiy to the default and return.
u $FF08 Unused
B $FF08,83,8*10,3
c $FF5B Halt and run one frame in the first (outdoor) room
D $FF5B Used by the routine at #R$CD41.
C $FF5B,1 Wait for interrupts.
C $FF5C,4 Run a frame and exit.
b $FF60 Monty's angel
D $FF60 #GRAFIXSTR($FF60)(Angel)
B $FF60,128,8
b $FFE0 Dead Monty
D $FFE0 #GRAFIX($FFE0)(Monty_dead)
B $FFE0,32,8
