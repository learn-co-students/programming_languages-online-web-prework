def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, value|
    value.each do |name, attribute|
      attribute.each do |type, value|
        if new_hash[name]
          new_hash[name][:style].push(style)
        else
          new_hash[name] = {type => value, :style => [style]}
        end
      end
    end
  end
  new_hash
end