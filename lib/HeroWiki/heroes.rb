class HeroWiki::Heroes

    attr_accessor :name, :description, :abilities, :special_moves, :quotes, :link

    @@heroes= []

    def initialize(name, description, abilities, special_moves, quotes, link)
        @name = name
        @description = description
        @abilities = abilities
        @special_moves = special_moves
        @quotes = quotes
        @link = link
        @@heroes << self
    end

    def self.heroes
        @@heroes
    end
end