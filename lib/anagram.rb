require 'pry'
# Your class, Anagram should take a word on initialization, and instances should respond to a match method that takes an array of possible anagrams. It should return all matches in an array. If no matches exist, it should return an empty array.

# In other words, given: "listen" and %w(enlists google inlets banana) the program should return ["inlets"].
class Anagram
  attr_accessor :word
  def initialize(word)
    @word = word
    end
# Does an array of letters (@word) match another array of letters(array)?
  def match(array)                    # ["hello", "world", "zombies", "pants", "dipper"]
    # (@word.match(%w(array)))
    split_word = @word.split("").sort # ["a", "d", "e", "i", "p", "r"]
    # split_element = []
    # array.collect do |element|
    #   split_element = element.split("").sort
    #   if split_element == split_word
    #     return element
    #   end
    # end
    array.select {|i| %w(i).sort == split_word}
    binding.pry
  end

end
# @word.match(%w(array))
# (element.split("").sort)
                                      # An example:
                                      # listen = Anagram.new("listen")
                                      # listen.match(%w(enlists google inlets banana))
                                      #
                                      # # => ["inlets"]
                                      # %w(@word)
