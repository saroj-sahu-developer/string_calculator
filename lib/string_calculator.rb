class StringCalculator
  def self.add(input)
    return 0 if input.strip.empty?
    delimiter = /,|\n/
    input.split(delimiter).map(&:to_i).sum
  end
end
