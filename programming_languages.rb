
def reformat_languages(languages)
  # your code here
  new = {}

  languages.each do |key, values|
    
     values.each do |p_key, type|

      type.each do |c_key, result|
   
        new[p_key] ||= {}
        new[p_key][:type] ||= result
        new[p_key][:style] ||= []    
        new[p_key][:style] << key  
        
      end
    
     end
     new
  end

    new
end