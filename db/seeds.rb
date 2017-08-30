# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(
  :name => 'Couch',
  :description => 'Modern blue couch',
  :inventory => 200,
  :price => 100.00,
  :restocked_at => Time.now,
  :qty_sold => 0,
  :ref_num => '1000001'
)

Product.create(
  :name => 'Chair',
  :description => 'Brown chair',
  :inventory => 100,
  :price => 40.00,
  :restocked_at => 1.day.ago,
  :qty_sold => 0,
  :ref_num => '1000002'
)
