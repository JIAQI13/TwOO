class Game
    def initialize
        @first_number=0
        @second_number=0
        @current_player='player1'
        @game_over=false
    end

    attr_accessor:first_number,:second_number,:current_player,:game_over

    def number
        self.first_number=rand(99999...999999999)
        self.second_number=rand(99999...99999999)
    end

    def question
        self.number
        puts "#{self.current_player}: what does #{self.first_number} plus #{self.second_number} equal?"
    end

    def switch
        if self.current_player == "player1"
            self.current_player = "player2"
        elsif self.current_player == "player2"
            self.current_player = "player1"
        end
    end

    def check(p1,p2)
        answer = gets.chomp.to_i
        if answer == self.first_number + self.second_number
            puts "Yes, you are correct!"
        else
            puts "Seriously? No!"
            p1.lose if self.current_player == "player1"
            p2.lose if self.current_player == "player2"
        end
        puts "#{p1.show} vs #{p2.show}"
        if p1.health == 0
            puts "------------------------"
            puts "Player 2 wins with a score of #{p2.show}"
            puts "--------Game Over--------"
            puts "GoodBye!"
            self.game_over = true
        elsif p2.health == 0
            puts "------------------------"
            puts "Player 1 wins with a score of #{p1.show}"
            puts "--------Game Over--------"
            puts "GoodBye!"
            self.game_over = true
        else
            puts "--------New Turn--------"
        end
        self.switch
    end

    def start_game(p1,p2)
        while !self.game_over
            self.question
            self.check(p1,p2)
        end
    end
end


    
