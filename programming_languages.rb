def reformat_languages(languages)
  new = {}
  language.each do |key, value|
  languages.each do |x, y|
  attributes.each do |attribute, val|
   if language == :javascript
   new[language] = 
    {
      :type => value,
       :style => [:oo, :functional]
        }
       else
        new[language] = 
        {
           :type => value,
           :style => [language_cat]
         }      
       end
      end
    end
 end
  new
end
