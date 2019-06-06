
def reformat_languages(languages)
  # Declare some variables
  new_hash = {}

  # Iterate over the languages
  languages.each do |style, style_attr|
    style_attr.each do |lang, lang_attr|
      new_hash[lang] = lang_attr
      new_hash[lang][:style] = [style]
    end
  end
  new_hash[:javascript][:style].insert(-1, :oo)
  new_hash
end
