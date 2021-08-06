class WLI
  attr_accessor :names

  def initialize
    @names = []
  end
  def likes
    case @names.length
    when 0
      'no one likes this'
    when 1
      "#{@names[0]} likes this"
    when 2
      "#{@names[0]} and #{@names[1]} like this"
    when 3
      "#{@names[0]}, #{@names[1]} and #{names[2]} like this"
    else
      "#{@names[0]}, #{@names[1]} and #{@names.length - 2} others like this"
    end
  end
end

# TTD Test driven development
