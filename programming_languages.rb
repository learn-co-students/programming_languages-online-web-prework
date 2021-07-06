require "pry"

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
  new_hash = {}
  languages.each do |oo_or_f, language_hash|
    language_hash.each do |name, type_hash|
      new_hash[name] ||= type_hash
      new_hash[name][:style] ||= []
      new_hash[name][:style] << oo_or_f

      
  end
end
new_hash
end
 

 

 
 
 

