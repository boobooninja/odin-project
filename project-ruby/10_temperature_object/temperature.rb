class Temperature
  def self.from_celsius(temp)
    self.new(c: temp)
  end

  def self.from_fahrenheit(temp)
    self.new(f: temp)
  end

  def initialize(args)
    @celsius    = args[:c]
    @fahrenheit = args[:f]

    if @celsius
      @fahrenheit = (@celsius.to_f * 9 / 5 + 32).round(1)
    elsif @fahrenheit
      @celsius = ((@fahrenheit.to_f - 32) / 9 * 5).round(1)
    end
  end

  def in_fahrenheit
    @fahrenheit
  end

  def in_celsius
    @celsius
  end
end

class Celsius < Temperature
  def initialize(temp)
    super(c: temp)
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    super(f: temp)
  end
end
