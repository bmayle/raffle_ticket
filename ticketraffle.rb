def winningNums(winner, my_ticket)
	winner.class
end

def my_ticket_length(winner, my_ticket)
	my_ticket.to_s.length
end

def ticket_search(winner, my_ticket)
	my_ticket = my_ticket.to_s
	counter = 0 
	winner.each do |raffle|
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
		counter = 0
	end
if counter == 4
	"Winner!"
elsif counter == 3
	"So Close!"
else
	"Loser!"
end
		


		# if raffle = my_ticket
		# 	"Winner!"
		# elsif raffle = 
		
				
end
