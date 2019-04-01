def reformat_languages(languages)
  new_hash = {}
  languages.each do |lang_type, lang_data|
    lang_data.each do |name, attributes|
    new_hash[name] ||= attributes
    new_hash[name][:style] ||= []
    new_hash[name][:style] << lang_type
    end
  end
   new_hash
end
