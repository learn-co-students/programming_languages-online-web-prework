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
   languages.each do |style, description|
    description.each do |name, type|
      if new_hash.has_key?(name)
        new_hash[name][:style] << style
      else
        new_hash[name] = type
        new_hash[name][:style] = [style]
      end
    end
  end
   new_hash
end
