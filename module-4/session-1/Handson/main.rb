class WhoLikeThis
  attr_accessor :names
  def initialize(names)
    @names = names
  end
  
  def likes()
    if @names.length == 1 
      "#{@name}likes this."
    elsif @name.length >= 2 && @name.length < 4
      "#{@name[0]} #{@name[1]} #{@name[2]} like this."
    elsif @name.length > 3
      "#{@name[0]} #{@name[1]} and #{@name.length - 2} other like this"
    else
      "no one likes this."
    end
  end
end


# TTD Test driven development
