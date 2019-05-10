require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |language_style, language_data|
    language_data.each do |language_name, language_type|
      #binding.pry
      language_type.each do |key, value|
        new_hash[language_name] ||= {}
        new_hash[language_name][key] = value
        new_hash[language_name][:style] ||= []
        new_hash[language_name][:style] << language_style
      end
    end
  end
    new_hash
  end
