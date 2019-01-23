def reformat_languages(languages)
  # your code here
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

end

def reformat_languages(languages)
new_hash = {}
languages.each do |style, data|
  data.each do |language, value|
    value.each do |details, v|
      if new_hash[language].nil?
        new_hash[language] = {}
      end
      new_hash[language][:style] ||= []
      new_hash[language][:style] << style 
      if new_hash[language][details].nil?
        new_hash[language][details] = v
      end
    end
  end
end
new_hash
end


