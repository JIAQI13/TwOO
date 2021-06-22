class Player
    def initialize(name)
        @name = name
        @max_round = 3
        @health=3
    end

    attr_accessor :name,:max_round,:health

    def show
        "#{self.name}:#{health}/#{max_round}"
    end

    def lose
        self.health -= 1
    end
end
