def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, langs|
    langs.each do |name, attributes|
      new_hash[name] ||= attributes
      new_hash[name][:style] ||= []
      new_hash[name][:style] << style
    end
  end
  new_hash
end
