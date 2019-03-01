require "pry"

# languages = {
#   :oo => {
#     :ruby => {
#       :type => "interpreted"
#     },
#     :javascript => {
#       :type => "interpreted"
#     },
#     :python => {
#       :type => "interpreted"
#     },
#     :java => {
#       :type => "compiled"
#     }
#   },
#   :functional => {
#     :clojure => {
#       :type => "compiled"
#     },
#     :erlang => {
#       :type => "compiled"
#     },
#     :scala => {
#       :type => "compiled"
#     },
#     :javascript => {
#       :type => "interpreted"
#     }
 
#   }
# }

def reformat_languages(languages)
  new_hash = {}
  
  languages.each {|style, lang_hash|
    lang_hash.each {|lang, type_hash|
      if new_hash.keys.include?(lang)
        new_hash[lang][:style] << style
      else
        new_hash[lang] = type_hash
        new_hash[lang][:style] = []
        new_hash[lang][:style] << style
      end
    }
  }
  
  new_hash
end
