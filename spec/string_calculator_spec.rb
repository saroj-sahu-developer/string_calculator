require 'string_calculator'

RSpec.describe StringCalculator do
  describe ".add" do
    it "returns 0 for an empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it "returns the number itself when one number is provided" do
      expect(StringCalculator.add("5")).to eq(5)
    end

    it "returns sum of two comma-separated numbers" do
      expect(StringCalculator.add("1,2")).to eq(3)
    end

    it "returns sum of multiple numbers" do
      expect(StringCalculator.add("1,2,3,4")).to eq(10)
    end

    it "handles newlines as delimiters" do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it "handles custom delimiters" do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end

    it "throws exception for negative numbers" do
      expect { StringCalculator.add("-1,2") }.to raise_error("negative numbers not allowed: -1")
    end
  end
end
