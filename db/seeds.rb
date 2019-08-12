# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@elite = Brand.create(name: "Elite")
@camx = Brand.create(name: "CamX")

#--------------

@compound_type = Type.create(name: "compound")
@crossbow_type = Type.create(name: "crossbow")

#--------------

@A4 = Bow.create(type_id: @crossbow_type.id, brand_id: @camx.id, name: "A4")
@x330 = Bow.create(type_id: @crossbow_type.id, brand_id: @camx.id, name: "x330")

@ritual33 = Bow.create(type_id: @compound_type.id, brand_id: @elite.id, name: "Ritual 33")
@valor = Bow.create(type_id: @compound_type.id, brand_id: @elite.id, name: "Valor")

#--------------

@entry_material = Material.create(name: "8190", description: "entry level")
@mid_material = Material.create(name: "8125G", description: "mid level")
@top_material = Material.create(name: "452x", description: "top level")

@material_id_array_all = [
  @entry_material.id,
  @mid_material.id,
  @top_material.id
]

#---------------

@buckskin_color = Color.create(name: "Buckskin", code: "111", count: 1, swatch_url: "S3")
@od_green_color = Color.create(name: "OD Green", code: "222", count: 1, swatch_url: "S3")
@natural_white_color = Color.create(name: "Natural White", code: "333", count: 1, swatch_url: "S3")
@winter_camo_color = Color.create(name: "Winter Camo", code: "530", count: 3, swatch_url: "S3")
@speckled_green_black_color = Color.create(name: "Speckled Green/Black", code: "680", count: 2, swatch_url: "S3")

#---------------

@buckskin_string = BowString.create(
  color_id: @buckskin_color.id,
  materials: @material_id_array_all,
  strand_1_image: "s3",
  strand_2_image: "s3",
  serving_image: "s3"
)

@od_green_string = BowString.create(
  color_id: @od_green_color.id,
  materials: @material_id_array_all,
  strand_1_image: "s3",
  strand_2_image: "s3",
  serving_image: "s3"
)

@natural_white_color = BowString.create(
  color_id: @natural_white_color.id,
  materials: @material_id_array_all,
  strand_1_image: "s3",
  strand_2_image: "s3",
  serving_image: "s3"
)

@winter_camo_string = BowString.create(
  color_id: @winter_camo_color.id,
  materials: [@top_material.id],
  strand_1_image: "s3",
  strand_2_image: "s3",
  serving_image: "s3"
)

@speckled_green_black_string = BowString.create(
  color_id: @speckled_green_black_color.id,
  materials: [@mid_material.id, @top_material.id],
  strand_1_image: "s3",
  strand_2_image: "s3",
  serving_image: "s3"
)
