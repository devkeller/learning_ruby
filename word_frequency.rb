# Define method to create array of words from text file
def file_words_to_arr(file_name)
  arr = []
  File.open(file_name, "r").each_line do |line|
    line.downcase.split(/'\S*|\W/).reject { |s| s == "" }.each { |word| arr << word }
  end
  arr
end

# Return hash of occurences of number_of_word most frequent words
def word_frequency(file_name, stop_words_file_name, number_of_word)
  words_by_frequency = {}

  source_arr = file_words_to_arr(file_name)
  stop_arr = file_words_to_arr(stop_words_file_name)
  wordcount_arr = source_arr - stop_arr

  # Filter count array should include the x most frequent words and put them and their count into the hash
  filter_count_arr = wordcount_arr.uniq.max_by(number_of_word) { |word| wordcount_arr.count(word) }
  filter_count_arr.each { |word| words_by_frequency[word] = wordcount_arr.count(word) }

  words_by_frequency
end
# manual test
filename = 'data/source_text.txt'
#filename = 'data/Harry Potter and the Sorcerer.txt'
stop_words = 'data/stop_words.txt'
#p File.file? filename 
#p File.file? stop_words 
number_of_word = 10
p word_frequency(filename, stop_words, number_of_word)
