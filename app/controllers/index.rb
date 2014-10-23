get '/' do
  # Look in app/views/index.erb

  erb :index
end

get '/*' do
  # puts request.path
  word = request.path.delete!("/")
  sorted_downcase = word.downcase.split(//).sort.join

  anagrams = Word.where(sorted_downcase: sorted_downcase)
  anagram_string = ""
  anagrams.each do |anagram|
    anagram_string += anagram.word + "<br>"
  end


  # @words = "something something"
  erb :index, :locals => {:original_word => word, :words_html => anagram_string}
end
