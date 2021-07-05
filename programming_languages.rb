def reformat_languages(languages)
  new_hash = {}
  # grabs oo and functional keys and then language hash as value
  languages.each do |type, hash|
    # grabs language name (i.e. Ruby) keys and type value (i.e. "interpreted")
    hash.each do |name, attributes|
      #if no value present, insert language into new hash as key with a value of attributes which is the key value pair
      new_hash[name] ||= attributes
      #create a value for each language key called style as an empty array
      new_hash[name][:style] ||= []
      #insert type into style array
      new_hash[name][:style] << type
    end
  end
  new_hash
end
