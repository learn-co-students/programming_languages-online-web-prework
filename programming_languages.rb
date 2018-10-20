require 'pry'

def reformat_languages(languages)
  new_hash = Hash.new
  # hash of languages as keys, each has a value of another hash with two keys, type and styles
  # the value of type is a string, where the value of style is an array
  languages.each do |styles, lang_types|
    new_hash[lang_types] = {}
    new_hash[lang_types][:style] = [styles]
  end
  binding.pry
end
