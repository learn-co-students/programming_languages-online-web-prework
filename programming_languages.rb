def reformat_languages(languages)
  return_hash = {}
  style = ":style".to_sym
  languages.each do |key, value|
    value.each do |key2, value2|
      value2.each do |key3, value3|
        return_hash[key2] = {:type => "#{value3}", :style => [key]}
      end
    end
  end
  return_hash[:javascript][:style] << :oo
  return return_hash
end