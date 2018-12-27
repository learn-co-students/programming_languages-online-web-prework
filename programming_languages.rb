require "pry"

def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |style, language|
    language.each do |name, type|
      #need following line to avoid error: undefined method `[]=' for nil:NilClass ??
      if new_hash[name] == NIL
        new_hash[name] = type
        new_hash[name][:style] = []
      end
    new_hash[name][:style]<< style
    end
  end
  new_hash
  #binding.pry
end
