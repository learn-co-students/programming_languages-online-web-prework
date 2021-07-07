def reformat_languages(hash)
  newHash = {}
  hash.each do |key, val|
    val.each do |lang, attr|
      if newHash[lang] == nil
        newHash[lang] = {:type => attr.values.join(''), :style => [key]}
      else
        newHash[lang][:style] << key
      end
    end
  end
  newHash
end
