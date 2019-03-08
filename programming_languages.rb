require "pry"

def reformat_languages(languages)
  new_language_hash = {}

  languages.each {|style, languages|
    languages.each {|language, attribute|

      if new_language_hash[language].class == Hash
        new_language_hash[language][:style] << style
      else
        new_language_hash[language] = {}
        new_language_hash[language] = attribute
        new_language_hash[language][:style] = [style]
      end

    }
  }
  
  new_language_hash
end
