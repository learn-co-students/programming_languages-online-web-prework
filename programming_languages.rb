require 'pry'

def reformat_languages(languages)
 new_hash = {}
 languages.each do |styles, data|
   data.each do |language, type|
     if new_hash.has_key?(language)
      new_hash[language][:style] << styles
     else
      new_hash[language] = {
       type: type.values.join,
       style: [styles]}
   end
  end
 end
new_hash
end
