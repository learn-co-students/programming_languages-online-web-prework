require "pry"

def reformat_languages(languages)
  new_hash={}
  languages.each do |type,data|
    data.each do |lang,value|
      new_hash[lang]={type:value.values[0],style:[type]}
    end
  end
  languages.each do |type,data|
    new_hash.each do |lang,value|
      new_hash[lang][:style].push(type) if data.include?(lang)
      #making sure that languages with two styles ":oo" or ":functional"
      #have those in the style array
      new_hash[lang][:style]=new_hash[lang][:style].uniq
      #the line above this one adds duplicates of the style so we
      #need to make it unique
    end
  end
  new_hash
end
