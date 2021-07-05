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
  languages.each { |s, l| new_hash.merge!(l) }

    new_hash.each do |lang, data|
      hashy = {style: []}
      languages.each do |style, other|
        if languages[style].has_key?(lang)
          hashy[:style] << style
        end
      end
      new_hash[lang].merge!(hashy)
    end
  new_hash
end
