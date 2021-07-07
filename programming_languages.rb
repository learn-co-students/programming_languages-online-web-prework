def reformat_languages(languages)
  
  new_hash = {}
 
  languages.each do |style, lang|
    lang.each do |name, type| 
   new_hash[name] ||= type
    new_hash[name][:style]=[]
    new_hash[name][:style]<<style
   end
end 
   return new_hash
  end
  

  puts reformat_languages(languages)
