class Player

  def initialize(gender)
    @gender = gender
  end

  def self.female
    new(:female)
  end

  def self.male
    new(:male)
  end

  def male?
    gender == :male
  end

  private

  attr_reader :gender
end