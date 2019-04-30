require 'pry'

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}

def reformat_languages(languages)
  new_hash = { }
  
  languages.each do |key, value|
    style = {style: [key]}
    value.each do |lang, type|
      if new_hash[lang].nil?
      
        new_hash[lang] = type
        new_hash[lang][:style] = [key]
      else
        new_hash[lang][:style] << key    
            
      end     
    end
  end 
  new_hash
end


