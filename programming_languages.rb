require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, data|
    #style :oo data everything under style
    data.each do |lang, type|
      #lang - :ruby type - :type - "interpreted"
      type.each do |key, value|
        new_hash[lang] ||= {}
        new_hash[lang][key] = value
        new_hash[lang][:style] ||= []
        new_hash[lang][:style] << style

      end

    end


  end

return new_hash
end

#lang {
#  type
#    ":style" => style
