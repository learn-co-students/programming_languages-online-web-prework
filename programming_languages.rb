require "pry"

def reformat_languages(languages)

  new_hash_v = {}
  languages.each do |k, v|
    v.each do |lang, type|
      # binding.pry
      new_hash_v[lang] ||= type
      new_hash_v[lang][:style] ||= []
      new_hash_v[lang][:style] << k
    end
  end
  return new_hash_v
end
  # new_hash = {}
  # languages.each do |lang_k, lang_v|
  #   new_hash.merge!(lang_v)
  #   # binding.pry
  # end

  # new_hash.each do |lang, values|
  #
  # end

#   return new_hash
# end

# puts reformat_languages(languages)
