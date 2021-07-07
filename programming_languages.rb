=begin
# Set languages hash
languages ={
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
=end

# Build new programming language hash with languages as keys
def reformat_languages(languages)
  new_hash = {}
  
  # Iterate through existing hash by style
  languages.each do |style, lang_stats|
    lang_stats.each do |name, type|
        
      # If language exists, add to style array
      if new_hash[name]
        new_hash[name][:style] << style
        
      # Else create new hash entry
      else 
        new_hash[name] = {
          :type => type[:type],
          :style => [style]
        }
      end
    end
  end
  
  new_hash 
end