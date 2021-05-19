require './spec/spec_helper'

peg1 = Peg.new('b', 4)
peg2 = Peg.new('r', 3)
peg3 = Peg.new('g', 2)
peg4 = Peg.new('y', 1)
peg5 = Peg.new('b', 1)
peg6 = Peg.new('r', 2)
peg7 = Peg.new('g', 3)
peg8 = Peg.new('y', 4)
peg9 = Peg.new('b', 3)
peg10 = Peg.new('r', 4)
peg11 = Peg.new('g', 1)
peg12 = Peg.new('y', 2)
peg13 = Peg.new('b', 2)
peg14 = Peg.new('r', 1)
peg15 = Peg.new('g', 4)
peg16 = Peg.new('y', 3)
code1 = SecretCode.new
code1.add_peg(peg1)
code1.add_peg(peg2)
code1.add_peg(peg3)
code1.add_peg(peg4)
code1.add_peg(peg5)
code1.add_peg(peg6)
code1.add_peg(peg7)
code1.add_peg(peg8)
code1.add_peg(peg9)
code1.add_peg(peg10)
code1.add_peg(peg11)
code1.add_peg(peg12)
code1.add_peg(peg13)
code1.add_peg(peg14)
code1.add_peg(peg15)
code1.add_peg(peg16)
code1.randomize
code1.row_one
code1.row_two
code1.row_three
code1.row_four
code1.create_code
play = Play.new(code1)


game = Game.new(play)
game.welcome
