# As a user,

#This is the context
# So that I know whether there are coins in my piggy bank

#3rd line is important
# I can shake it, and it will "cling" if there is money in it

#nouns
  #money (@coins)
  #cling

#verbs
  #shake


class PiggyBank
    def initialize
        @coins = [] 
    end

    def coins
        @coins
    end

    def shake
      puts "cling" if @coins.length > 0
    end

    def add(coin)
      @coins << coin
    end
end