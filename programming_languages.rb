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
  # your code here
  hash = {}
  languages.each do |oo_functional, lang_hash|
    lang_hash.each do |language, attribute|
      attribute.each do |attribute, string_val|
        if hash[language].nil?
          hash[language] = {}
        end
        hash[language][:style] ||= []
        hash[language][:style] << oo_functional
        if hash[language][attribute].nil?
          hash[language][attribute] = string_val
        end
      end
    end
  end
  hash
end
