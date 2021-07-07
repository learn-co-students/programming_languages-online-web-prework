def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, data|
    data.each do |language, detail|
    new_hash[language] = detail
  
   if !new_hash[language].key?(:style)
   new_hash[language][:style] = []
    new_hash[language][:style] << style
  else
   new_hash[language][:style] << style
    
    
 end
end
end
return new_hash
end


def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, data|
    data.each do |language, detail|
    binding.pry
    if !new_hash[language].key?(:style)
    new_hash[language] = detail
    new_hash[language][:style] = []
    new_hash[language][:style] << style
   else
     new_hash[language][:style] << style
    
              end
            
        end
      end
    end
      return new_hash
end