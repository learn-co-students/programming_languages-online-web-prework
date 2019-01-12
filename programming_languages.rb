require "pry"

def reformat_languages(languages)
  new_hash={}
  new_hash[:ruby]= languages[:oo][:ruby]
  new_hash[:ruby][:style]= [languages.keys.first]
 
  new_hash[:javascript]= languages[:oo][:javascript]
  new_hash[:javascript][:style]=languages.keys
  
  new_hash[:python]= languages[:oo][:python]
  new_hash[:python][:style]=[languages.keys.first]
  
  new_hash[:java]= languages[:oo][:java]
  new_hash[:java][:style]=[languages.keys.first]
  
  new_hash[:clojure]= languages[:functional][:clojure]
  new_hash[:clojure][:style]=[languages.keys.last]
  
  new_hash[:erlang]= languages[:functional][:erlang]
  new_hash[:erlang][:style]=[languages.keys.last]
  
  new_hash[:scala]= languages[:functional][:scala]
  new_hash[:scala][:style]=[languages.keys.last]
 
  new_hash

    
end
