class Ship
   def initialize size
     @size = size
   end

   attr_reader :size

   def ==(other)
     self.size == other.size && other.class == self.class
   end

  def eql?(other)
    self.size == other.size
  end

  def hash
    self.class.object_id
  end
end

p Ship.new(2).hash
p Ship.new(2).hash
p Ship.new(1).hash

p [Ship.new(1), Ship.new(2)] & [Ship.new(2), Ship.new(3)]

