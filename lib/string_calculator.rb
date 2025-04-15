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

    input.split(delimiter).map(&:to_i).sum
  end
end
