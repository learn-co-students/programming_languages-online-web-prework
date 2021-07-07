require "pry"
# languages = {
#   :oo => {
#   :ruby => {:type => "interpreted"},
#     :javascript => {:type => "interpreted"},
#     :python => {:type => "interpreted"},
#     :java => {:type => "compiled"}
#   },
#   :functional => {
#     :clojure => {:type => "compiled"},
#     :erlang => {:type => "compiled"},
#     :scala => {:type => "compiled"},
#     :javascript => {:type => "interpreted"}
# }
# }

def reformat_languages(languages)
  new_hash = {}
  languages.each do |lang_style, lang_names|
    lang_names.each do |names, types|
    new_hash[names] = types
    new_hash[names][:style] = [lang_style]
    end
  end
  new_hash[:javascript][:style]<< :oo
  new_hash
end

