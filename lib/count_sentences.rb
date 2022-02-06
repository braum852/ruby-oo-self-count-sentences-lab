require 'pry'

class String

  def sentence?
    self.end_with? "."
  end

  def question?
    self.end_with? "?"
  end

  def exclamation?
    self.end_with? "!"
  end

  def count_sentences
    self.split(/\.|\?|\!/).delete_if{|word| word.length < 2}.count
  end
end

##self.split - splits array when comes across . ? ! 
##by using regex condition |\ means or
##.length  returns the number of elements in the array
##.delete_if means Deletes every element of self for which block evaluates to true.
##