class Book
# write your code here
  def title
    words = @title.split(" ")

    capitalized_words = words.map { |word| to_capital(word) }
    capitalized_words[0].capitalize! # capitalize first word that is a little word

    @title = capitalized_words.join(" ")
  end

  def title=(title)
    @title = title
  end

  private
  def to_capital(word)
    little_words = ["the", "and", "a", "an", "in", "of"]

    if not little_words.index(word)
      word.capitalize!
    end

    word
  end
end
