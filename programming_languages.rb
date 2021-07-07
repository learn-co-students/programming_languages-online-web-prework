require 'pry'
#languages = {
#  :oo => {
#    :ruby => {
#      :type => "interpreted"
#    },
#    :javascript => {
#      :type => "interpreted"
#    },
#    :python => {
#      :type => "interpreted"
#    },
#    :java => {
#      :type => "compiled"
#    }
#  },
#  :functional => {
#    :clojure => {
#      :type => "compiled"
#    },
#    :erlang => {
#      :type => "compiled"
#    },
#    :scala => {
#      :type => "compiled"
#    },
#    :javascript => {
#      :type => "interpreted"
#    }
# 
#  }
#}

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style_key, style_value|
    style_value.each do |language_key, language_val|
      language_val.each do |type_key, type_val|
        #new_hash[language_key] = {
        #  :type => type_val
        #}
        if new_hash.key?(language_key) == true
          #new_hash[language_key][:type] = type_val
          new_hash[language_key][:style] << style_key
        else 
          new_hash[language_key] = {}
          new_hash[language_key][:type] = type_val
          new_hash[language_key][:style] = [style_key]
        end 
        #binding.pry
      end 
    end 
  end 
  new_hash
end
