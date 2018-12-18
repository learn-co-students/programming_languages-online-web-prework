require 'pry'

def reformat_languages(languages)
  # your code here
  
  new_hash = {}
  
    
  languages.each do |style, type|
    
    type.each do |language, description|
      
      if new_hash[language] == nil 
         
         new_hash[language] = description
          
          new_hash[language][:style] = []
        
        end
        
    new_hash[language][:style] << style 
    
    end 
  
  end 
     
  new_hash
    
end
