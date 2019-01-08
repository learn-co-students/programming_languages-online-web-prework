=begin
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
=end

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language_info|
    style_array = []
    language_info.each do |language, type|
      if new_hash.has_key?(language)
        new_hash[language][:style] << style 
      else 
        new_hash[language] = {:style => [style], :type => type.values[0]}
      end
    end
  end
  new_hash
end
