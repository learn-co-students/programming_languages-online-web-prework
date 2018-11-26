def reformat_languages(input)
  reformatted = {}
  input.each do |style, languages|
    languages.each do |language, attributes|
      if reformatted[language]
        reformatted[language][:style] << style
      else
        reformatted[language] = attributes
        reformatted[language][:style] = [style]
      end
    end
  end
  reformatted
end
