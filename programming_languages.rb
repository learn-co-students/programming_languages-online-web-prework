require "pry"


def reformat_languages(languages)
  reformatted = {}
  languages.each do |oo_func, all_langs|
    all_langs.each do |lang, type|
      if reformatted[lang] == nil
        reformatted[lang] = type
      end
      reformatted[lang][:style] = [oo_func]
    end
  end
  reformatted[:javascript][:style].push(:oo)
  reformatted
end
