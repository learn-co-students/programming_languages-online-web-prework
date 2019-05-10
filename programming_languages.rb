require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language_data|
    language_data.each do |name, type|
      #binding.pry
      type.each do |key, value|
        new_hash[name] ||= {}
        new_hash[name][key] = value
        new_hash[name][:style] ||= []
        new_hash[name][:style] << style
      end
    end
  end
    new_hash
  end
