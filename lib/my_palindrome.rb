# frozen_string_literal: true

require_relative "my_palindrome/version"

module MyPalindrome
  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end
  
  private
  
  # Returns content for palindrome testing.
  def processed_content
    self.to_s.scan(/[a-z\d]/i).join.downcase
  end
end


class String
  include MyPalindrome
end

class Integer
  include MyPalindrome
end