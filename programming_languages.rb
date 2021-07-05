require "pry"

def reformat_languages(languages)
  new_hash = {}
  languages.each do |key, value|
   value.each do |language, attribute|
  new_hash[language] = attribute
  if key == :oo
  new_hash[language][:style] = [:oo]
  elsif language == :javascript
  new_hash[language][:style] = [:oo,:functional]
  else
  new_hash[language][:style] = [:functional]
end
   end
 end
  return new_hash
end
