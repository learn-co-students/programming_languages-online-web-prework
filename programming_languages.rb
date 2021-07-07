require 'pry'

def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |style, language|
    language.each do |language_name, type|
      type.each do |type_cat, type_info|
        new_hash[language_name] = {type: type_info}
        new_hash[language_name][:style] = [ ]
        new_hash[language_name][:style] << style
      end 
    end
  end
  new_hash[:javascript][:style] << :oo
  new_hash
end


