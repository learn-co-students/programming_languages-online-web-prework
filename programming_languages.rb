
def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language_names|
    language_names.each do |name, language_type|
      if new_hash.has_key?(name)
        new_hash[name][:style] << style 
      else
        new_hash[name] = language_type
        new_hash[name][:style] = [style]
      end 
    end
  end
  new_hash
end
