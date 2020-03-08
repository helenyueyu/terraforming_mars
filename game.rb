require_relative 'corporation'

class Game
    attr_reader :player1, :player2, :current_turn 
    attr_reader :oxygen_level, :temperature_level, :ocean_count 

    def initialize
        @player1 = Corporation.new("Player 1")
        @player2 = Corporation.new("Player 2")
        @current_turn = 1 

        @oxygen_level = 0 
        @temperature_level = -30 
        @ocean_count = 0
    end

    def game_over? 
        oxygen_level == 14 && temperature_level == 8 && ocean_count == 9 
    end

    def switch_turn
        current_turn == 1 ? 2 : 1 
    end

    def play
        until game_over? 
            p "Terraforming Mars has begun! Choose a corporation"
            if current_turn == 1 
                @player1.play 
            else  
                @player2.play 
            end
        end 
    end
end


g = Game.new 
g.play 
