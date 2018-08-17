class PigLatinizer

  def translate(sent)
  translation = sent.split(' ').map do |w|
    vowels = %w(a e i o u)
    word = w.downcase.split('')

    if vowels.include? word[0]
      "#{word.join}way"
    else
      "%s%say" % [word[1..-1].join, word[0]]
    end
  end

  translation.join(' ').capitalize
end
