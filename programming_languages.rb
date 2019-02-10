require'pry'

def reformat_languages(languages)
  
  new_languages_hash = {}
  
  languages.each do |language_style, value_hash|                 # These notes explain how to make my method account for Javascript being included in two style hashes in the 
                                                                 # original languages hash. When the original hash is reformatted new_languages_hash[language][:style][] needs 
    value_hash.each do |language, attributes_hash|               # to have both styles 00 and functional in it.
      
      if new_languages_hash[language]                            # On the first time through the iteration this conditional (line 11) returns falsy, because it's before line 17 and                                                              new_languages_hash[language] has not been assigned a value yet, so the else conditional kicks in. 
#binding.pry         
        new_languages_hash[language][:style] << language_style 
#binding.pry         
      else   
      
      new_languages_hash[language] = attributes_hash             # Because line 11 was falsy, the else conditional kicks in and this line 17 of code assigns attributes_hash to                                                                   new_languages_hash[language] and lines 19-21 run, reformatting the hash and :style [] has one style in it. But on                                                              the second iteration through, line 11 returns truthy and line 13 shovels the second style into :style []
      
      new_languages_hash[language][:style] = []
      
      new_languages_hash[language][:style] << language_style
      
#binding.pry
      end   
    end 
  end
  new_languages_hash
#binding.pry 
end
