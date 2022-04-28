# frozen_string_literal: true

def by_three?(number)
  return true if (number % 3).zero?

  false
end

print by_three?(3)
