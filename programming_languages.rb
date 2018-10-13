def reformat_languages(language)
  hash = {}
  language.each do |language_cat, languages|
  languages.each do |language, attributes|
  attributes.each do |attribute, value|
        if language == :javascript
          hash[language] = {
            :type => att_value,
            :style => [:oo, :functional]
          }
        else
          hash[language] = {
             :type => att_value,
             :style => [language_cat]
          }
        end
      end
    end
  end
 hash
end	
