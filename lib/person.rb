# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    #custom setter
    def happiness=(new)
        if new >= 10
            @happiness = 10
        elsif new <= 0
            @happiness = 0
        else 
            @happiness = new
        end
    end

    # customer setter
    def hygiene=(new)
        if new >= 10
            @hygiene = 10
        elsif new <= 0
            @hygiene = 0
        else 
	    @hygiene = new
        end
    end

    def happy?
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

    def get_paid (salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end
    
    def call_friend (new_person)
        self.happiness += 3
        new_person.happiness += 3
        "Hi #{new_person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation (new_person, topic)
        if topic == "politics"
            new_person.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            new_person.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else 
	    "blah blah blah blah blah"
        end
    end 
end
