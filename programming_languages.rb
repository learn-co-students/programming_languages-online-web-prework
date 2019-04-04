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
  # your code here
  new_hash = {}
  languages.each do |style, langs|
    langs.each do |lang, type|
      if new_hash[lang] == nil
        new_hash[lang] = type
      end
        new_hash[lang][:style] = []
        #binding.pry
        new_hash[lang][:style].push(style)
        #binding.pry
    end
  end
new_hash[:javascript][:style].push(:oo)
new_hash
#binding.pry
end

reformat_languages(languages)
