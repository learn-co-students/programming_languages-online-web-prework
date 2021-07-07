
def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, names|
    names.each do |name, description|
      new_hash[name] ||= {style: []}
      new_hash[name][:type] = description[:type]
      new_hash[name][:style] << style
    end
  end
  new_hash
end


#iterate over the language hash
#create a new hash that has the language as a key, and value will be another hash with type and style.
