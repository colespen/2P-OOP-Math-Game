class Player 
  attr_accessor :name, :score, :life

  def initialize(name)
    self.name = name
    self.life = 3
  end

  def welcome
    puts "Hellloo #{self.name}!"
  end

  def deplete 
    self.life -= 1
  end

  def kill
    self.life == 0
  end

end
