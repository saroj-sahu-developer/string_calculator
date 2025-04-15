class StringCalculator
  def self.add(input)
    return 0 if input.strip.empty?
    
    if input.start_with?("//")
      delimiter, numbers = input[2..-1].split("\n", 2)
      delimiter = Regexp.escape(delimiter)
      input = numbers
    else
      delimiter = /,|\n/
    end

    numbers = input.split(delimiter).map(&:to_i)

    negatives = numbers.select { |n| n < 0 }
    if negatives.any?
      raise "negative numbers not allowed: #{negatives.join(',')}"
    end

    numbers.sum
  end
end
