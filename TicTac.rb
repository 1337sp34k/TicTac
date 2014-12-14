#this is a tic tac toe game.
#get input from the user
#make the board
#a1 a2 a3
#b1 b2 b3
#c1 c2 c3
#puts "1 or 2 players?"
#playnum = gets.chomp
#make a funstion for 1 player, put below viccond and board functions
#if playnum == 2 #make funstion for 2 players
#puts "Will player 1 be x or o? Please neter your choice."
#p1 = gets.chomp
#puts "Will player 2 be x or o? Please neter your choice."
#p2 = gets.chompputs "The board looks"
def moveSave(new_board)
board = [a1, a2, a3, b1, b2, b3, c1, c2, c3]
board.push(new_board)
return board
end
	board = { "a1" => "a1", "a2" => "a2", "a3" => "a3", "b1" => "b1", "b2" => "b2", "b3" => "b3", "c1" => "c1", "c2" => "c2", "c3" => "c3" }
def VicCond(a1, a2, a3, b1, b2, b3, c1, c2, c3)
	(((a1 == a2) and (a2 == a3)) or
	 ((a1 == b1) and (b1 == c1)) or
	 ((a2 == b2) and (b2 == c2)) or
	 ((a3 == b3) and (b3 == c3)) or
	 ((b1 == b2) and (b2 == b3)) or
	 ((c1 == c2) and (c2 == c3)) or
	 ((a1 == b2) and (b2 == c3)) or
	 ((a3 == b2) and (b2 == c1)))
		#if "x" == a1, a2, a3 then vic = true
		#elsif "o" == a1, a2, a3 then vic = true
		#elsif "x" == a1, b1, c1 then vic = true
		#elsif "o" == a1, b1, c1 then vic = true
		#elsif "x" == a2, b2, c2 then vic = true
		#elsif "o" == a2, b2, c2 then vic = true
		#elsif "x" == a3, b3, c3 then vic = true
		#elsif "o" == a3, b3, c3 then vic = true
		#elsif "x" == b1, b2, b3 then vic = true
		#elsif "o" == b1, b2, b3 then vic = true
		#elsif "x" == c1, c2, c3 then vic = true
		#elsif "o" == c1, c2, c3 then vic = true 
		#elsif "x" == a1, b2, c3 then vic = true 
		#elsif "o" == a1, b2, c3 then vic = true
		#elsif "x" == a3, b2, c1 then vic = true
		#elsif "o" == a3, b2, c1 then vic = true
	end
def gameOver(a)
	vic = false
		if "x" == a[0] and a[1] and a[2] and a[3] and a[4] and a[5] and a[6] and a[7] and a[8] then vic = true
		elsif "o" == a[0] and a[1] and a[2] and a[3] and a[4] and a[5] and a[6] and a[7] and a[8] then vic = true
	end
	vic = VicCond(a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8])
	return vic
end
def RandPlay(arrboard)
	while true
		play = rand(arrboard.length)
		# arrboard[play] == "x" or "o" 
		if((arrboard[play] != "x") and (arrboard[play] != "o")) 
			arrboard[play] = "o"
			break
		end
	end
	return arrboard
end
vic = false
#elsif playnum == 1 then
while vic == false
	puts "The game is Tic-Tac-Toe. You are X's, I am O's. The game board looks like this and is labeled as so: "
	puts "0, 1, 2"
	puts "3, 4, 5"
	puts "6, 7, 8"
	puts"What square to want to play? Please enter as it is labeled on the board, ex. 0."
	space = gets.chomp
	#board.each do |key|
	arrboard = board.keys 
	arrboard[space.to_i] = "x"
	newboard = RandPlay(arrboard)
	storboard = moveSave(newboard)
	vic = gameOver(newboard)
		if vic == true then puts "There has been a winner!"
	end
	puts "The board looks like this: "
	puts storboard[0].to_s +  storboard[1].to_s +  storboard[2].to_s
	puts storboard[3].to_s +  storboard[4].to_s +  storboard[5].to_s
	puts storboard[6].to_s +  storboard[7].to_s +  storboard[8].to_s
end
