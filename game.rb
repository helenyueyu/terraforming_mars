class Game
    attr_reader :oxygen_level, :temperature_level, :ocean_count 

    def initialize
        @oxygen_level = 0 
        @temperature_level = -30 
        @ocean_count = 0
    end

    def game_over? 
        oxygen_level == 14 && temperature_level == 8 && ocean_count == 9 
    end

    def play 
    end
end