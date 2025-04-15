# String Calculator

This project is a simple string calculator implemented in **Ruby**, following **Test Driven Development (TDD)** principles using **RSpec**.

---

## Features

- Add numbers in a string separated by commas or newlines
- Support for custom delimiters (e.g. `//;\n1;2`)
- Handles any number of inputs
- Throws an error if negative numbers are passed
- Lists **all** negative numbers in the error message

---
## How to Run Locally and Test All Test Case

### Prerequisites

Make sure the following are installed on your system:

**Ruby**, 
**Bundler** (for managing project dependencies)


- git clone https://github.com/saroj-sahu-developer/string_calculator
- cd string_calculator
- bundle install
- bundle exec rspec

---

## Project Structure

- The `"add"` method is implemented in: `lib/string_calculator.rb`
- The test cases are written in: `spec/string_calculator_spec.rb`
