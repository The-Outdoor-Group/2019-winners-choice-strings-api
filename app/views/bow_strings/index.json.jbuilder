# json.array! @bow_strings, partial: "bow_strings/bow_string", as: :bow_string
json.array! @bow_strings do |bow_string|
  json.id bow_string.id
  json.color_id bow_string.color_id
  json.color_name bow_string.color.name
  json.materials bow_string.materials
end
