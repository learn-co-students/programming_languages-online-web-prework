require "pry"
def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |name, lang|
    lang.each do |data, description|
    
      if new_hash[data] == nil
      new_hash[data] = description
      new_hash[data][:style] = []
      
      end
      new_hash[data][:style] << name
    end
  end
  new_hash
end
