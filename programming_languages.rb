require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style_key, lang_val|
    lang_val.each do |lang_key, lang_attr|
      new_hash[lang_key] = lang_attr
      new_hash[lang_key][:style] = []
    end
    new_hash.map do |hash_key, hash_value|
      if hash_key == :javascript
        hash_value[:style] = [:oo, :functional]
      elsif (lang_val.keys.include?(hash_key)) && !(hash_value[:style].include?(style_key))
        hash_value[:style] << style_key
      end
    end
  end
  new_hash
end
