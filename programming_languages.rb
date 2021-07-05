require 'pry'
def reformat_languages(languages)
  new_hash = {}
  languages.each do |oo_functional, languages_hash|
   
    languages_hash.each do |language, hash|
       
      hash.each do |type, string|
     
       new_hash[language] ||= {}
      
       new_hash[language][type] ||= string
       new_hash[language][:style] ||= []
       new_hash[language][:style] << oo_functional
       
    end 
  end

end
new_hash
end
