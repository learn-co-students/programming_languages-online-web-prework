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
      new_language_hash[language][:style] << styles
    end
  end
  
  
  
  
  

      
 
          
new_language_hash  
end


##  new_language_hash.each do |language_name, data|
##    languages.each do |styles, language_data|
##      language_data.each do |key, value|
##        value.each do |type, values|
##          if key == language_name
##            new_language_hash[language_name] << value