require "pry"
def reformat_languages(languages)
  hash = {}
  # styles =[]
  languages.each do |key,value|
    # styles << key
    # puts "#{styles}"
    value.each do |k,v|
      v.each do |t,val|
        if hash[k].nil?
          hash[k] = {}
        end
        #create empty array if :style is not exist
        hash[k][:style] ||= []
        hash[k][:style] << key
        if hash[k][t].nil?
          hash[k][t] = val
        end
      end
      # if hash[k]
      #   hash[:type] = v
      #   hash[k][:style] = styles
      # end
    end
  end
  hash
  # binding.pry
end
