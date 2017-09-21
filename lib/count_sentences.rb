require 'pry'

class String

  def sentence?
    return true if self.end_with?(".") else false
  end

  def question?
    return true if self.end_with?("?") else false
  end

  def exclamation?
    return true if self.end_with?("!") else false
  end

  def count_sentences
    sentences = self.split(/[.?!]/)
    sentences.delete_if { |sentence| sentence.length == 0 }
    sentences.length
  end
end
