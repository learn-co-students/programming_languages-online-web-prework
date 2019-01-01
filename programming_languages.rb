require "pry"
def reformat_languages(languages)
  h= {}
  languages.each do |k,lang_hash|
    lang_hash.each do |lang,style|
      if !h[lang]
        h[lang]=style
      end
      if   !h[lang][:style]
        h[lang][:style]= [k]
      else
      h[lang][:style] << k


      end
    end
    end

    h
end
