class Ship
   def initialize size
     @size = size
   end

   attr_reader :size

   def ==(other)
     self.size == other.size && other.class == self.class
   end

  def eql?(other)
    self.size == other.size && other.class == self.class
  end

  def hash
    (self.size.to_s + self.class.object_id.to_s).hex
  end
end

p [Ship.new(1), Ship.new(2)] & [Ship.new(2), Ship.new(3)]

