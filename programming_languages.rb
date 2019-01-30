require "pry"

def reformat_languages(languages)
  new_hash = {}
  temp = {}
  array = []
 
  languages.each do |key, attribute|
    attribute.each do |language, value|
      
      if new_hash.include?(language)
        array = new_hash[language][:style]
        array << key
        new_hash[language] = value 
        new_hash[language][:style] = array
      else
        new_hash[language] = value 
        new_hash[language][:style] = [key]
      end
      
      #binding.pry
    end
  end 
   
  #binding.pry
  new_hash 
end
