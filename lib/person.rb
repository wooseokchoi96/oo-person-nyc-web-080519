class Person

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account
  
  @@maximum = 10
  @@minimum = 0

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(new_happiness)
    @happiness = [[new_happiness, @@minimum].max, @@maximum].min
  end
  
  def hygiene=(new_hygiene)
    @hygiene = [[new_hygiene, @@minimum].max, @@maximum].min
  end
  
  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
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

  def call_friend(person)
    self.happiness += 3
    person.happiness += 3
    "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end


end # end of Person class
