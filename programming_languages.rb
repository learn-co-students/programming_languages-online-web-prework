def reformat_languages(languages)
  # your code here
  out ={}
  languages.each{|style,info|
    info.each{|language,type|
        puts type
        if out.has_key?(language)
          out[language][:style].push(style)
        else

           out[language]={
            :type=>type[:type],
            :style=>[style]
          }
        end
      }}
    out
end

#puts reformat_languages(
#{
#  :oo => {
#    :ruby => {
#      :type => "interpreted"
#    },
#    :javascript => {
#      :type => "interpreted"
#    },
#    :python => {
#      :type => "interpreted"
#    },
#    :java => {
#      :type => "compiled"
#    }
#  },
#  :functional => {
#    :clojure => {
#      :type => "compiled"
#    },
#    :erlang => {
#      :type => "compiled"
#    },
#    :scala => {
#      :type => "compiled"
#    },
#    :javascript => {
#      :type => "interpreted"
#    }
#
#  }
#}
#)
