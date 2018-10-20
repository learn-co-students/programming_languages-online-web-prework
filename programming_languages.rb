def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |style, description|
    description.each do |language_style, language_type|
      language_type.each do |type, data|
        if new_hash[language_style]
          new_hash[language_style][:style] << style
        else
          new_hash[language_style] = {type => data, :style => [style]}
        
       end
      end
    end
  end
   return new_hash
end 