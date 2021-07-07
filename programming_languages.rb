require "pry"
def reformat_languages(languages)
  new_hash = {}

  languages.each do |value, data|
    data.each do |language, type|
      if new_hash[language]
        new_hash[language][:style] << value
      else 
        new_hash[language] = type
        new_hash[language][:style] = [value]
      end
    end
  end
  new_hash
end
