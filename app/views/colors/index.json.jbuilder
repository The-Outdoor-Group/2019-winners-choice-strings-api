# json.array! @colors, partial: "colors/color", as: :color
json.array! @colors do |color|
  json.id color.id
  json.name color.name
  json.code color.code
  json.count color.count
  json.swatch_url color.swatch_url
end
