def reformat_languages(language)
  hash = {}
  language.each do |key, languages|
  languages.each do |language, attributes|
  attributes.each do |attribute, value|
        if language == :javascript
          hash[language] = {
            :type => value
            :style => [:oo, :functional]
          }
        else
          hash[language] = {
             :type => value
            :style => [key]
          }
        end
      end
    end
  end
 hash
end	
