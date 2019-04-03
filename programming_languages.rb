require 'pry'
  #lang = oo and functional 
  #key = language name 
  #value = type + actual type
 #lang_names: array of programs 
  #type: array of types (interpreted or compiled)
  #style: array of styles (oo or functional)
  #our new hash is hash = {lang name => {type => "type"}, {style => "style"}}
  #i = 0
# while i<lang_names.size
# new_hash[lang_names[i]] = {
# :type => type [i].join, :style => style[i]} 
# i = i+1
# end 
def reformat_languages (languages) 
new_hash = {}
style = []
type = [] 
lang_names = []

languages.each do |oo_or_functional, language_hash|
  
  language_hash.each do |language, attribute_hash|
  
    attribute_hash.each do |type, value|
      if !new_hash[language]
        new_hash[language] = {}
      end #end if
      if !new_hash[language][:style]
        new_hash[language][:style] = []
      end #end if
      new_hash[language][:style] << oo_or_functional
      if !new_hash[language][type]
        new_hash[language][type] = value
      end 
  end #do value.each 
  end #end all do 
 
end #end do lang.each
new_hash
end #reformat_languages