require 'pry'

def reformat_languages(languages)
  # your code here
  reformatted = {}

  languages.each do |style, languages|
    languages.each do |language, types|
      unless reformatted.key?(language)
        reformatted[language] = {type: "", style: []}
      end
      reformatted[language][:style] << style
      types.each_value do |type|
        reformatted[language][:type] = type
      end
    end
  end
  reformatted
end
