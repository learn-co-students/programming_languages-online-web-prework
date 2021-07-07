def reformat_languages(languages)

  reformated_hash = {}
    languages.each do |type, languages_hash|
        languages_hash.each do |language, data|
          if reformated_hash.has_key?(language)
          reformated_hash[language][:style] << type
          else
          reformated_hash[language] = data
          reformated_hash[language][:style] = [type]
          end
      end
    end
  reformated_hash
end

