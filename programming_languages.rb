def reformat_languages(languages)
  # Declare some variables
  new_hash = {}
  type_cat = []
  # Iterate over language
  # Update new_hash
  languages.each do |style, style_info|
    type_cat << style = style_info.keys
    style_info.each do |lang, detials|
      new_hash[lang] = detials
      new_hash[lang][:style] = []
    end
  end

  # Operate on newly created hash
  # Add style of each lang
  new_hash.each do |lang, data|

    languages.keys.each_with_index do |style, index|
      if type_cat[index].include?(lang)
        # Update style array of each lang
        new_hash[lang][:style] << style
      end

    end
  end
end