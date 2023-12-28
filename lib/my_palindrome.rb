# frozen_string_literal: true

require_relative "my_palindrome/version"

# module MyPalindrome
#   class Error < StandardError; end
#   # Your code goes here...
# end

class String

  # Returns content for palindrome testing.
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

  # Returns true for a palindrome, false otherwise.
  def processed_content
    scan(/[a-z]/i).join.downcase
  end
end
  