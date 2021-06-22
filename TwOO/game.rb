class Game
    def initialize
        @first_number=0
        @second_number=0
        @current_player='player1'
        @game_over=false

    attr_accessor:first_number,:second_number,:current_player,:game_over

    def number
        self.first_number=rand(99999...999999999)
        self.second_number=rand(99999...99999999)
    end

    def question
        "what does #{self.first_number} plus #{self.second_number} equal?"
    end

    def change_turn
        