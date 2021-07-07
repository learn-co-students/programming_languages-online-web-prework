require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language|
    language.each do |lang, type|
      if new_hash[lang]
        new_hash[lang][:style] << style
      else
        new_hash[lang] = { :type => type[:type], :style => [] }
        new_hash[lang][:style] << style
      end
    end 
  end
  new_hash
end