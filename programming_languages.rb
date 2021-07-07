def reformat_languages(languages)
  # your code here
  
  #type: nil for string
  obj = Hash.new {|hash, key| hash[key] = {type: nil, style: []}}

  languages.each_with_object(obj) do |(key,value), hash|
    value.each do |lang, item|
        hash[lang][:style] << key
        hash[lang][:type] = item[:type] 
  end
 end
end

