def reformat_languages(languages)
 new_hash = {}
 languages.each do |style, data|
   data.each do |language, type|
     type.each do |attribute, str_value|
      if !new_hash[language]
       new_hash[language] = {}
    end
   new_hash[language][:style] ||= []
   new_hash[language][:style] << style
    if !new_hash[language][attribute]
      new_hash[language][attribute] = str_value
    end
   end
  end
 end
 new_hash
end
