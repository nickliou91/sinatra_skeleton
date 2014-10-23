words = File.read('words')


words.each_line do |word|
  word.delete!("\n")
  sorted_downcase = word.downcase.split(//).sort.join
  Word.create(word: word, sorted_downcase: sorted_downcase)
end

