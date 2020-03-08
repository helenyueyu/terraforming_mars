class Corporation 
    attr_reader :terraform_rating, :money_production, :steel_production, :titanium_production, :plant_production, :energy_production, :heat_production 

    attr_reader :money, :steel, :titanium, :plant, :energy, :heat 

    def initialize(player)
        @player = player 

        @terraform_rating = 20 
        @money_production = 0 
        @steel_production = 0 
        @titanium_production = 0 
        @plant_production = 0 
        @energy_production = 0
        @heat_production = 0

        @money = 0 
        @steel = 0 
        @titanium = 0 
        @plant = 0 
        @energy = 0 
        @heat = 0 
    end

    def production
        @money += @money_production 
        @steel += @steel_production 
        @titanium += @titanium_production 
        @plant += @plant_production 
        @energy += @energy_production 
        @heat += @heat_production 
    end

    def play
        p "#{player} is playing" 
    end
end