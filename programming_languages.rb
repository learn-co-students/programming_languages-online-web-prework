require 'pry'

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


def reformat_languages(languages)
  new_hash = {}
  langs = []
  styles = []
  languages.each do |style, lang|
    langs << lang
  end
  languages.each do |style, lang|
    styles << style
  end
  new_hash = langs.reduce Hash.new, :merge
  new_hash.each do |lang, info|
    if lang == :ruby
      new_hash[:ruby][:style] = [styles[0]]
    elsif lang == :javascript
      new_hash[:javascript][:style] = styles[0], styles[1]
    elsif lang == :python
      new_hash[:python][:style] = [styles[0]]
    elsif lang == :java
      new_hash[:java][:style] = [styles[0]]
    elsif lang == :clojure
      new_hash[:clojure][:style] = [styles[1]]
    elsif lang == :erlang
      new_hash[:erlang][:style] = [styles[1]]
    elsif lang == :scala
      new_hash[:scala][:style] = [styles[1]]

    end


 end
  new_hash
end
