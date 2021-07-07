require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |category, language|
    language.each do |name, attributes|
      if new_hash[name].nil?
      new_hash[name] = attributes
      arr = []
      arr << category
        attributes[:style] = arr
      else
        new_hash[name][:style] << category
        end
      end
    end
  new_hash
end
