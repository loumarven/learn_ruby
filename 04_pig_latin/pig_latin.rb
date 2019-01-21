#write your code here
def translate(string)
  words = string.split(" ")
  translated = []

  words.each do |word|
    consonants_start = "" 
    index = 0

    loop do
      break if word[index].match(/[aeiou]/)

      consonants_start = consonants_start + word[index]
      index = index + 1
    end

    if word.slice(index - 1, 2) == "qu"
      consonants_start = consonants_start + "u"
      index = index + 1
    end
 
    translated.push(word[index..-1] + consonants_start + "ay")
  end

  translated.join(" ")
end

