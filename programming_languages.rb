require 'pry'

def reformat_languages(languages)
  new_hash = Hash.new
  # hash of languages as keys, each has a value of another hash with two keys, type and styles
  # the value of type is a string, where the value of style is an array
  languages.each do |styles, lang_types|
    lang_types.each do |languages, types|
      if new_hash[languages] == nil
        new_hash[languages] = {}
        new_hash[languages][:style] = [styles]
      else
        new_hash[languages][:style] << styles
      end
      new_hash[languages][:type] = types.values[0]
    end
  end
  new_hash
end
