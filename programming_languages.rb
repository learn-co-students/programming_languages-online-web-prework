def reformat_languages(l)
  # your code here
  hash = {}
  l.each do |style, lang|
    lang.each do |name, attributes|
      hash[name] ||= attributes
      hash[name][:style] ||= []
      hash[name][:style] << style
    end
  end
  hash
end
