require "pry"

def reformat_languages(languages)
  
  new_hash = {}
  
  languages.each do |k,v|
    v.each do |k1,v1|
      if new_hash[k1].nil?
        new_hash[k1] = v1
      end  
     
      if new_hash[k1][:style].nil?
         new_hash[k1][:style] = []
      end
      unless new_hash[k1][:style].include?(k)
        new_hash[k1][:style] << k
      end
      
    end 
 end
 new_hash
end



#hash[:my_key] = {second_level_key: "second level value"}