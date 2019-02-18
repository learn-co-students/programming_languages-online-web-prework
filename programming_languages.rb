require "pry"

def reformat_languages(languages)
  new_hash = {}
  
#   languages.each do |style, language_hash|
#     # binding.pry
#     new_hash = new_hash << language_hash
#     # binding.pry
#     new_hash.each do |language, attributes|
#       new_hash[language][:style] = style
#       # binding.pry
#     end
#   end
#   binding.pry
#   new_hash

  languages.each do |style, language_hash|
    language_hash.each do |language, attributes|
      new_hash[language] = {style: []}
    end
  end
  
  languages.each do |style, language_hash|
    language_hash.each do |language, attributes|

      new_hash = {
      attributes, 
      binding.pry
      new_hash[language][:style] << style
      }

    end
  end

  # languages.each do |style, language_hash|
  #   # binding.pry
  #   language_hash.each do |language, attributes|
  #     binding.pry
  #     new_hash[language] = {style: style}
  #     new_hash[language] = attributes
  #     # binding.pry

  #   end
  #   # binding.pry
  #   new_hash
  # end


end

