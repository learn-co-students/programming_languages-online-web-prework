require 'pry'

def reformat_languages(languages)
  languages.each_value do |prog_lang|
    prog_lang.each do |key, value|
      binding.pry
    end
  end

end
