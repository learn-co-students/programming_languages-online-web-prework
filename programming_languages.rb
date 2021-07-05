def reformat_languages(languages)
  language_attributes = {}

  languages.each do |top_key, language_hash|
    
    language_hash.each do |language, attribute_hash|
      attribute_hash.each do |attribute, str_value|
        if language_attributes[language].nil?
          language_attributes[language] = {}
        end
        
        language_attributes[language][:style] ||= []
        language_attributes[language][:style] << top_key                             
        if language_attributes[language][attribute].nil?
          language_attributes[language][attribute] = str_value
        end
      end
    end
  end
  language_attributes
end