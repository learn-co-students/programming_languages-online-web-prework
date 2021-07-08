def reformat_languages(languages)
  # your code here
  
 newhash = {}

  languages.each do |type, language|
    language.each do |language, attribute|
    #puts language
    #puts attribute
    
    newhash[language] = {:type => attribute[:type]}

    end
  end

  newhash.each do |key, val|
    val[:style] = []
  end


  languages.each do |type, val|
    val.each do |language, att|
        newhash[language][:style] << type
    end
    #puts val
    
  end
  newhash
end