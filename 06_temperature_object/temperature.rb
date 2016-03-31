class Temperature

  # Temperature is stored in fahrenheit internally

  # options hash is either { :f => ? } or { :c => ? }
  def initialize(options)
    @temperature = 0
    if options.key?(:f)
      @temperature = options[:f].to_f
    elsif options.key?(:c)
      @temperature = options[:c].to_f * 9.0/5.0 + 32.0 # Convert to internal fahrenheit representation
    end
  end

  # Conversion instance methods

  def to_celsius
    (@temperature - 32.0) * 5.0/9.0
  end

  def to_fahrenheit
    @temperature
  end

  # Factory methods

  def self.in_celsius(celsius)
    return Temperature.new({ c: celsius })
  end

  def self.in_fahrenheit(fahrenheit)
    return Temperature.new({ f: fahrenheit })
  end

end

class Celsius < Temperature

  def initialize(celsius)
    super({ c: celsius })
  end

end

class Fahrenheit < Temperature

  def initialize(fahrenheit)
    super({ f: fahrenheit })
  end

end
