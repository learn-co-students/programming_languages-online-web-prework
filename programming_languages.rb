require 'pry'
def reformat_languages(languages)
  new_hash = {}
  keys = []
  languages.each do |key, value|
    value.each do |language_names, info|
      new_hash[language_names] = info
      new_hash[language_names][:style] = []
    end   
    new_hash.each do |language, info|
      keys = []
      languages.each do |key, value|
        #binding.pry
        if value.include?(language)
            keys << key
            new_hash[language][:style] = keys.uniq
            #binding.pry
        end
        #binding.pry
      end
      #binding.pry
    end
    #binding.pry
  end
  #binding.pry
  new_hash
 end          
    
      
  
