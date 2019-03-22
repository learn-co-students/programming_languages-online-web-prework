require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, lang|
    lang.each do |lang_k, lang_v|
      new_hash[lang_k] ||= lang_v
      new_hash[lang_k][:style] ||= []
      new_hash[lang_k][:style] << style
    end
  end
  new_hash
end
