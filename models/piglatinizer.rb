class PigLatinizer

   def piglatinize(word)
    @word = word
    vowel ='aeiou'
    text = text.split()
      text.map do |word|
        if word.length == 1
         "#{word}way"
        elsif vowel.include? word[0]
          "#{word}way"
        else
          split = word.split(/([aeiou])/,2)
          "#{split[1]}#{split[2]}#{split[0]}ay"
      end
    end.join(' ')
  end
end
