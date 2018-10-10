def reformat_languages(languages)
  hash = {}
  languages.each do |type, data|
    data.each do |lang, value|
      hash[lang] = value
      hash[lang][:style] = []
      hash[lang][:style] << type
    end
    languages.each do |type, data|
      if hash.has_key?(:javascript)
        hash[:javascript][:style] = [:oo, :functional]
      end
    end
  end
  hash
end
