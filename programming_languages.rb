require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, data|
    #style :oo data everything under style
    data.each do |lang, type|
      #lang - :ruby type - :type - "interpreted"
      new_hash[] = lang
      new_hash[lang] = type
binding.pry












    end
  end
end
