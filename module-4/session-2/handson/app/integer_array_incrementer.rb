class IntegerArrayIncrementer
  def increment(arr)
    new_arr = arr[0..-2] + [arr[-1] + 1]

    if new_arr[-1] == 10
      if new_arr.length == 1
        return [1, 0]
      else
        return [new_arr[0] + 1, 0]
      end
    end

    new_arr
  end
end 
