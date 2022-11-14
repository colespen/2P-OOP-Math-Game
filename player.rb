class Player 
  attr_accessor :name :score :lives

  def initialize(name)
    self.name = name
    self.life = 3
  end

  def welcome
    puts "Ok #{self.name}! Put on your thinking cap."
  end

  def deplete 
    self.life -= 1
  end

  def kill
    self.life == 0
  end

end
