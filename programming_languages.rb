def reformat_languages(languages)
  new_hash = {}
  languages.each do |language_type, language_hash|
    language_hash.each do |language_key, details_hash|
      if !new_hash.include?(language_key)
        new_hash[language_key] = details_hash
        new_hash[language_key][:style] = [language_type]
      elsif
        new_hash[language_key][:style] << language_type
      end
    end
  end
  return new_hash
end
