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
  # your code here
  new_hash = {}
  languages.each do |languages_key, languages_hash|
    languages_hash.each do |language, attribute_hash|
      attribute_hash.each do |attribute, str_value|
        if new_hash[language].nil?
          new_hash[language] = {}
        end
new_hash[language][:style] ||= []
new_hash[language][:style] << languages_key
if new_hash[language][attribute].nil?
  new_hash[language][attribute] = str_value
        end
      end
    end
  end
  new_hash
end
