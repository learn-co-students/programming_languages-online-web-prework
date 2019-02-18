def reformat_languages(languages)
new_hash={}
languages[:ruby] = languages.delete(:oo)
languages.delete(:functional)
languages[:ruby] = {
  type: "interpreted",
  style: [:oo] }
languages[:javascript] = {
  type: "interpreted",
  style: [:oo, :functional] }
languages[:python] = {
  type: "interpreted",
  style: [:oo] }
languages[:java] = {
  type: "compiled",
  style: [:oo] }
languages[:clojure] ={
  type: "compiled",
  style: [:functional] }
languages[:erlang] ={
  type: "compiled",
  style: [:functional] }
languages[:scala] ={
  type: "compiled",
  style: [:functional] }

new_hash.merge(languages)
end
