def reformat_languages(languages)
  mainhash=languages
  new_hash={}
  mainhash.each do |style,language|
    language.each do |language2, type|
      if new_hash.key?(language2)
        new_hash[language2][:style]<<style
      else
        new_hash[language2]=type
        new_hash[language2][:style]=[style]
      end
    end
  end
  new_hash
end

def main_hash
 main_hash=languages = {
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
