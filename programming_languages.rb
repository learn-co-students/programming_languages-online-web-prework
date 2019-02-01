def reformat_languages(languages)
  new_hash = {}
  oo_hash = languages[:oo].each do |language, type|
    type[:style] = [:oo]
  end
  oo_hash.each do |language, description|
    new_hash[language] = description
  end

  functional_hash = languages[:functional].each do |language, type|
    type[:style] = [:functional]
  end
  functional_hash.each do |language, description|
    if new_hash.key?(language) == true
      new_hash[language][:style] = [:oo, :functional]
    elsif
      new_hash[language] = description
    end
  end
  new_hash
end
