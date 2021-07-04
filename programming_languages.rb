require "pry"

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, v|
    v.each do |language, data|
      data.each do |type, info|
        if new_hash[language] == nil
          new_hash[language]= { type=> info, :style => [style]}
        else
          new_hash[language][:style] << style
        end
      end
    end
  end
    return new_hash
end
