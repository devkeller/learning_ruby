def word_frequency(file_name, stop_words_file_name, number_of_word)
  # Return hash of occurences of number_of_word most frequent words

  string = open(file_name, 'r') { |f| f.read }
  # remove punctuation and lowercase everything
  lowercased_string = string.downcase.gsub(/\W/, ' ')
  # return string into array of strings
  arr_of_words = lowercased_string.split(' ')
  words_by_frequency = {}

  # loop over arr_of_words
  # add each word to hash as 'key' with a val
  # each time we come across same word, we increment the value
  arr_of_words.each do |word|
    if words_by_frequency.key?(word)
      words_by_frequency[word] += 1
    else
      # new words land here, so we add it to the has
      words_by_frequency[word] = 1
    end
  end

  # Get rid of the noise
  open(stop_words_file_name, 'r').each_line do |word|
    stop_word = word.strip
    if words_by_frequency.key?(stop_word)
      words_by_frequency.delete(stop_word)
    end
  end
  sorted_output_arr = words_by_frequency.sort_by{ |k, v| v }.reverse
  sorted_output_arr.first(number_of_word).to_h
end
# manual test
filename = 'data/source_text.txt'
stop_words = 'data/stop_words.txt'
#p File.file? filename 
#p File.file? stop_words 
number_of_word = 10
p word_frequency(filename, stop_words, number_of_word)
