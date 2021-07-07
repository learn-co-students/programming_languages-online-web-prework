def reformat_languages(languages)
  solution_hash = {}
  languages.each do |type, hash|
    hash.each do |name, string_value|
      solution_hash[name] ||= string_value
      solution_hash[name][:style] ||= []
      solution_hash[name][:style] << type
    end
  end
  solution_hash
end
