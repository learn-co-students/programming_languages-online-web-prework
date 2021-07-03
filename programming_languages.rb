require "pry"

def reformat_languages(languages)
  reformatted_hash = {}

  languages.each do |style, style_data|
    style_data.each do |language, language_data|
      language_data.each do |type, value|
        #binding.pry
        if !reformatted_hash[language]
          reformatted_hash[language] = {type => value, :style => []}
          reformatted_hash[language][:style] << style
        else    
          reformatted_hash[language][:style] << style
        end
      end
    end
  end
  return reformatted_hash
end

languages_by_style = 
    {
      :oo => {
        :ruby => {
          :type => "interpreted"
        },
        :javascript => {
          :type => "interpreted"
        },
        :python => {
          :type => "interpreted"
        },
        :java => {
          :type => "compiled"
        }
      },
      :functional => {
        :clojure => {
          :type => "compiled"
        },
        :erlang => {
          :type => "compiled"
        },
        :scala => {
          :type => "compiled"
        },
        :javascript => {
          :type => "interpreted"
        }
      }
  }

reformat_languages(languages_by_style)