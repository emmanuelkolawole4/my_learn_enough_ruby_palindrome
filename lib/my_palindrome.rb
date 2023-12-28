# frozen_string_literal: true

require_relative "my_palindrome/version"

# module MyPalindrome
#   class Error < StandardError; end
#   # Your code goes here...
# end

class String

  # Returns true for a palindrome, false otherwise.
  private def processed_content
    self.scan(/[a-z]/i).join.downcase
  end

  # Returns content for palindrome testing.
  def palindrome?
    processed_content == processed_content.reverse
  end
end
  