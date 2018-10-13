def reformat_languages(languages)
  new = {}
  language_hash.each do |key, value|
  languages.each do |x, y|
   attributes.each do |attribute, val|
      if language == :javascript
          new_hash[language] = {
            :type => att_value,
            :style => [:oo, :functional]
          }
        else
          new_hash[language] = {
             :type => att_value,
             :style => [language_cat]
          }
        end
      end
    end
  end
  return new_hash
end
