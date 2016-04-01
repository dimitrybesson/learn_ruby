class Temperature
  def initialize(attributes = {})
    @f = attributes[:f]
    @c = attributes[:c]
  end

  def to_fahrenheit
    if @f != nil
      f = @f
    else
      f = (9.0 / 5.0 * @c) + 32
    end
    f
  end

  def to_celsius
    if @c != nil
      c = @c
    else
      c = (@f - 32.0) * 5 / 9
    end
    c
  end

  def self.in_celsius(value)
    Temperature.new({:c => value})
  end

  def self.in_fahrenheit(value)
    Temperature.new({:f => value})
  end
end

class Celsius < Temperature
  def initialize(c)
    @c = c
  end
end

class Fahrenheit < Temperature
  def initialize(f)
    @f = f
  end
end
