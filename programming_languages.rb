def reformat_languages(languages)
  # your code here
  reformat_hash = {}
  languages.each do |style, lang_hash|
    lang_hash.each do |lang, type_hash|
      reformat_hash[lang] ||= { type: type_hash[:type], style: [] }
      reformat_hash[lang][:style].push(style)
    end
  end
  reformat_hash
      
end
