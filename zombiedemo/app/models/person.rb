class Person < ApplicationRecord
  belongs_to :race

  def greet
    "Hello, I'm #{self.name}"
  end

  def talk(n)
    if n == 1 then
      "Hello, are you one of them?"
    else
    "groooooooan"
  end
end

  def bite(n)
    if (self.race_id == 1) && (n.race_id == 1)
      puts "Humans don't bit humans!"
    end
    if (self.race_id == 2) && (n.race_id == 2)
      puts "Zombie flesh is gross, zombies don't eat zombies."
    end
    if (self.race_id == 1) && (n.race_id == 2)
      puts "RUUUN!"
    end
    if (self.race_id == 2) && (n.race_id == 1)
      puts "#{self.name} bit #{n.name}"
      n.race_id = 2
      n.save
    end

  end

def self.describe(n)
  person = Person.find(n)
  "This is #{person.name}, They are a #{person.race.title}"
end
end
