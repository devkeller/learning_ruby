def tag_creator(tag, text, attributes = {})
  attributes_as_text = []

  attributes.each do |key, value|
    attributes_as_text << "#{key}=\"#{value}\""
  end
  attributes_as_text = ' ' + attributes_as_text.join(' ')

  if attributes.empty?
    return "<#{tag}>#{text}</#{tag}>"
  else
    return "<#{tag}#{attributes_as_text}>#{text}</#{tag}>"
  end
end

puts tag_creator('div', 'Hello World')
puts tag_creator('div', 'Home Page', { class: 'w-50', href: "https://devkeller.tech" })
