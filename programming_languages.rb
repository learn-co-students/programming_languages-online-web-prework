require 'pry'

def reformat_languages(languages)
  newLanguage = {}
  languages.each do |style, info|
    info.each do |language, typeHash|
      typeHash.each do |type,answer|
        if newLanguage[language] == nil
          newLanguage[language] = {type:answer,style:[style]}
        else
          newLanguage[language][:style] << style
        end
      end
    end
  end
newLanguage
end
