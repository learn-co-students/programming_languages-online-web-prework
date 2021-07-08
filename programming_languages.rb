def reformat_languages(languages)
  new_hash = {}
  languages.each { |style, languageInfo| 
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

reformat_languages(languages)