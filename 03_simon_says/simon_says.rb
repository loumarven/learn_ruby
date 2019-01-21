#write your code here
def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, reps=2)
  ((string + " ") * reps).strip
end

def start_of_word(string, length)
    string[0, length]
end

def first_word(string)
  string.match(/\w+/)[0]
end

def titleize(string)
  words = string.split(" ")
  little_words = ["and", "over", "the"]
  res = []

  words.each do |word|
    if little_words.index(word).nil?
      res.push(word.capitalize)
    else
      res.push(word)
    end
  end

  res[0].capitalize! #capitalize first word that if a little word
  res.join(" ")
end
