require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, data|
    #style :oo data everything under style
    data.each do |lang, type|
      #lang - :ruby type - :type - "interpreted"
      type.each do |key, value|
        new_hash[lang] = {}

      end
      binding.pry
    end
    new_hash.merge!(data){|lang, type|}
    #new_hash has lang and type => type value

  end


end

#lang {
#  type
#    ":style" => style
