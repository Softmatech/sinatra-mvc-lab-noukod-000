class PigLatinizer

  def piglatinize(word_phrase)
    word_convert = word_phrase.split ' '

    word_convert.map do |word|
      if word.downcase.scan(/^[aeoui]+/).join ''
        word[0, word_scan_2.size] = ''
        word + word_scan_2 + "ay"
      end
  end.join ' '
end
end
