def winningNums(winner, my_ticket)
	winner.class
end

def my_ticket_length(winner, my_ticket)
	my_ticket.to_s.length
end

def ticket_search(winner, my_ticket)
	my_ticket = my_ticket.to_s
	results = []
counter = 0 
	winner.each do |raffle|
		counter = 0 
		raffle = raffle.to_s
		if raffle[0] == my_ticket[0]
			counter += 1
		end
	
		if raffle[1] == my_ticket[1]
				counter += 1
		end
		
		if raffle[2] == my_ticket[2]
				counter += 1
		end
		if raffle[3] == my_ticket[3]
				counter += 1
		end
		if counter == 4
			results.push("Winner!")
		elsif counter == 3
			results.push("So Close!")
		else
			results.push("Loser!")
		end
	end

		


		# if raffle = my_ticket
		# 	"Winner!"
		# elsif raffle = 
		
				
end
