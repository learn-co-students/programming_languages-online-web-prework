def reformat_languages(languages)
  # your code here
  new_hash={}
 anguages.each { |style, languageInfo| 
    languageInfo.each { |key, value|
      if !new_hash.has_key?(key)
        new_hash[key] = {type: value[:type], style: [style]}
      else
        new_hash[key][:style] << style
      end
    }
  }
  new_hash
end	

anguages = {
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
end 
 reformat_languages(languages)
