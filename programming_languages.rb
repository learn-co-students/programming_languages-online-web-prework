require 'pry'
def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |top, second|
    second.each do |second, third|
      new_hash[second] = third
      new_hash[second][:style] = []
    end
  end
  languages.each do |top, second|
    second.each do |second, third|
      new_hash[second][:style] << top
    end
  end
  new_hash
end
