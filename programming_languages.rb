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
  new_hash = {}
  languages.each do |style, data|
    data.each do |language, detail|
    new_hash[language] = detail
   if !new_hash[language].key?(:style)
   new_hash[language][:style] = []
   new_hash[language][:style] << style
  else
   new_hash[language][:style] << style
    
 end
end
end
binding.pry

end
