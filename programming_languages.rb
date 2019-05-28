require 'pry'
def reformat_languages(languages)
  new_language_hash = {}
  languages.each do |style, language|
    language.each do |lang, data|
      if new_language_hash.has_key?(lang)
        new_language_hash[lang][:style].push(style)
      else 
        new_language_hash[lang] = data
        new_language_hash[lang][:style] = []
        new_language_hash[lang][:style].push(style)
      end
    end 
  end
  new_language_hash
end
