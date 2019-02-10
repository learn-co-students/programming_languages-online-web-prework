require'pry'

def reformat_languages(languages)
  
  new_languages_hash = {}
  
  languages.each do |language_style, value_hash|
    
    value_hash.each do |language, attributes_hash|
      
      new_languages_hash[language] = attributes_hash
      
#binding.pry 
      
      new_languages_hash[language][:style] = []
      
      new_languages_hash[language][:style] << language_style
      
#binding.pry 
      
#      new_languages_hash[:style] = style_array
      
#binding.pry

#      attributes_hash.each do |type, type_value|
        
#binding.pry
        
    end 
  end
  new_languages_hash
#binding.pry 
end
