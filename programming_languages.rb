def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, lang|
    lang.each do |type, string|
      new_hash[type] ||= string
      new_hash[type][:style] ||= []
      new_hash[type][:style] << style
    end
  end
  new_hash
  
end
