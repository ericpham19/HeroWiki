class HeroWiki::Heroes

    attr_accessor :name, :description, :quotes

    @@heroes= []

    def initialize(name, description,  quotes)
        @name = name
        @description = description
        @quotes = quotes
        @@heroes << self
    end

    def to_s
        "#{description}"
    end

    def self.heroes
        @@heroes
    end
end