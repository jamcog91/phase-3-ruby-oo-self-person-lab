require 'pry'
class Person

attr_reader :name, :hygiene, :happiness
attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def bank_account=(value)
        @bank_account = value
    end
    
    def happiness=(value)
    #if the value is above 10, just set it to 10
    #if the value is below 0, just set it to 0
        @happiness = if value > 10
            10
        elsif value < 0 
            0
        else value
        end
    end
    
    def hygiene=(value)
        @hygiene = if value > 10
            10
        elsif value < 0
            0
        else value
        end
    end
        
    def happy?
        # @happiness > 7 ? true : false
        if @happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        ##{}
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
           "blah blah blah blah blah"
        end
    end
end




















































# class Person 
#     attr_accessor :bank_account
#     attr_reader :name, hygiene, happiness 


#     def initialize(name)
#         @name = name
#         @bank_account = 25 
#         @hygiene = 8
#         @happiness = 8
#     end

#     def hygiene
#         if num > 10 
#             puts 10
#         if num < 0
#             puts 0
#         elsif num = num
#         end
#     end   
# end

