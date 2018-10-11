def reformat_languages(languages)
  new_hash = {}
  languages.each do |type, attributes|
    attributes.each do |lang_name, other|
      case lang_name.to_s
      when 'ruby'
        new_hash[:ruby] = {type: "interpreted", style: [:oo]}
      when 'javascript'
        new_hash[:javascript] = {type: "interpreted", style: [:oo, :functional]}
      when 'python'
        new_hash[:python] = {type: "interpreted", style: [:oo]}
      when 'java'
        new_hash[:java] = {type: "compiled", style: [:oo]}
      when 'clojure'
        new_hash[:clojure] = {type: "compiled", style: [:functional]}
      when 'erlang'
        new_hash[:erlang] = {type: "compiled", style: [:functional]}
      when 'scala'
        new_hash[:scala] = {type: "compiled", style: [:functional]}
      end
    end
  end
  new_hash
end
