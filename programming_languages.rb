require 'pry'

def reformat_languages(languages)
  new_hash = {}
	languages.each do |style, lang_hash|
		lang_hash.each do |lang, type_hash|
			new_hash[lang] = {type: type_hash[:type]} unless new_hash[lang]
			new_hash[lang][:style] = [] unless new_hash[lang][:style]
			new_hash[lang][:style] << style
		end
	end
	new_hash
end
