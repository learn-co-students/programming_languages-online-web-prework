require "pry"

def reformat_languages(languages)
  new_hash = {}
  languages.each do |styles, lang|
    lang.each do |name, type|
       type.each do |key, value|
        # unless new_hash.include?(name) 
         if new_hash.include?(name)
           new_hash[name][:style] << styles
         else
            new_hash[name] = {key => value}
            new_hash[name][:style] = [styles]
       #  if new_hash.include?(name)
         #  new_hash[name][:style] << styles
         #  [[styles]] ||= new_hash[name][:style][[:oo, :functional]]

        end
       end 
       end 
     end
  return new_hash
end

#def reformat_languages(languages)
#  new_hash = {}
 # languages.each do |styles, lang|
 #   lang.each do |name, type|
 #      type.each do |key, value|
  #       unless new_hash.include?(name) 
  #         new_hash[name] = {key => value, :style => [styles]}
   #        unless new_hash[name][:style].include?(styles)
    #          new_hash[name][:style] << styles
     #    end 
      #   end
#       end 
 #    end
  #  end 
#  return new_hash
# end

#h[:key] << "bar"

# styles = :oo, functional 
# lang = :ruby => {type => interpreted"}, etc.. 
# name =: ruby, 
#type = :type => "interpreted"

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}