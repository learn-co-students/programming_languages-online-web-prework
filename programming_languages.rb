def reformat_languages(languages)
  hash = {}
  languages.each do |type, data|
     data.each do |lang, value|
      hash[lang]=value
      hash[lang][:style]=type
      end
     end
    end
