class Duck
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def move
    "waddles towards you."
  end

  def noise
    "Quack quack!"
  end
end

class Chicken
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def move
    "scrabbles towards you."
  end

  def noise
    "Bck bck!"
  end
end

class Train
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def move
    "is coming right at you!!"
  end

  def noise
    "Choo choo!"
  end
end

duck = Duck.new("Donald")
chicken = Chicken.new("The Colonel")
train = Train.new("Thomas")

class Person
  def play_with(animal)      #Although this argument is called
                             #animal, Ruby doesn't know what an "animal" is.
                             #It will accept any object which responds
                             # to the methods within.
    puts "#{animal.name} #{animal.move}"
    puts "#{animal.name} says #{animal.noise}"
  end
end

person = Person.new

person.play_with(duck)
person.play_with(chicken)
person.play_with(train)       #Obviously, a train is not an animal,
                              # but it has a name, makes noise and moves,
                              # so we can play with it!


