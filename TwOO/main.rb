class Player
    def initialize(name)
        @name=name
        @win = 0
    end

    def check(answer)
        input = gets.chomp
        if input == answer
            @win += 1
            puts "#{@name}: YES! You are correct."
        else 
            puts "#{@name}: Seriouly? No!"
        end
    end



end