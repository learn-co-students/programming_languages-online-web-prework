require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |language_style, language_hash|
    language_hash.each do |language_name, type_hash|
      new_hash[language_name] ||= type_hash
      new_hash[language_name][:style] ||= []
      new_hash[language_name][:style] << language_style
    end
  end
  new_hash
end
