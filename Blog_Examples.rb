class Examples

  def initialize
    @people = ["Carlos","Maria", "Juan", "Sonia", "Sandra" ]

  end

  def call_examples
    hello_ruby
    print "The result of 5! is #{factorial(5)} \n"
    print "Is 7 prime? #{ is_prime_number?(7)} \n"
    print "Is 16 prime? #{ is_prime_number?(16)} \n"
    starts_with?("S")
  end

  def hello_ruby
    print "First hello in ruby!!\n"
  end

  def factorial(number)
    result = 1
    if number > 0
      result = number * factorial(number - 1)
    else
      result = result * 1
    end
    return result
  end

  def is_prime_number?(number)
    divisor = 2
    if number == 2
      return true
    end
    while divisor < number
      if number%divisor == 0 and not number == divisor 
        return false
      end
      divisor += 1
    end
    return true
  end

  def starts_with?(letter)
    @people.each {|x| match?(letter, x)}
  end

  def match?(letter,name)
    if name.start_with?(letter)
      print "#{name} starts with #{letter} \n"
    end
  end

end
example = Examples.new
example.call_examples
