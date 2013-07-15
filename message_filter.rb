class MessageFilter

  def initialize(*words)
    @ng_words = words
  end

  attr :ng_words

  def detect?(text)
    @ng_words.any?{ |w| text.include?(w) }
  end
end
