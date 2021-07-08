require 'pry'

def reformat_languages(languages)
  language_hash = Hash.new
  languages.keys.each do
    |style|
    languages[style].keys.each do
      |lang|
      if language_hash.has_key?(lang)
        language_hash[lang][:style].push(style)
      else
        language_hash[lang] = {
           :type => languages[style][lang][:type],
           :style => []
        }
        language_hash[lang][:style].push(style)
      end
    end
  end
  language_hash
end