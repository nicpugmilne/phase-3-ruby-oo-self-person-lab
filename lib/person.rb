class Person
  attr_reader :name, :happiness
  attr_accessor :bank_account, :hygiene
  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def happiness=(num)
    @happiness =
      if num > 10
        10
      elsif num < 0
        0
      else
        num
      end
  end

  def hygiene=(num)
    @hygiene =
      if num > 10
        10
      elsif num < 0
        0
      else
        num
      end
  end

  def happy?
    happiness > 7 ? true : false
  end

  def clean?
    hygiene > 7 ? true : false
  end

  def get_paid(amount)
    @bank_account = bank_account + amount
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

  def call_friend(friend)
    friend.happiness += 3
    self.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    case topic
    when "politics"
      person.happiness -= 2
      self.happiness -= 2
      "blah blah partisan blah lobbyist"
    when "weather"
      person.happiness += 1
      self.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end
