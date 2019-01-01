require "pry"
def reformat_languages(languages)
h= {}
  languages.each do |k,v|
    add_to_hash=k
    h=v
    hash=v.keys
    h.each do |language, key|
     h[language]={:style =>[ ]}
#  h[language][:style]     <<add_to_hash

end
end
h
end
