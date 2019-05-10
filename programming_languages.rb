require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, key|
    key.each do |name, type|
      type.each do |value, data|
        new_hash[name] = {}
        new_hash[name][value] = data
        if new_hash[name][:style] == nil
          new_hash[name][:style] = []
        end
        new_hash[name][:style] << style
      end
    end
  end
    new_hash
    binding.pry
  end
