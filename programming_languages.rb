require 'pry'

def reformat_languages(languages)
  new_language_hash = {}
  languages.each do |styles, language_data|
    language_data.each do |language, type|
      new_language_hash[language] = {}
      type.each do |key, types|
        new_language_hash[language][key] = types
      end
      new_language_hash[language][:style] = []
    end
  end
  
  languages.each do |styles, language_data|
    language_data.each do |language_name, type|
      new_language_hash[language_name][:style] << styles
    end
  end

new_language_hash  
end

