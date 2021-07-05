require "pry"

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, hash|
    hash.each do |language, hash2|
      new_hash[language] ||= hash2
     # binding.pry
      if new_hash[language][:style].nil?
        new_hash[language][:style] = [style]
      else
        new_hash[language][:style] << style
      end
    end
  end
  new_hash
end
