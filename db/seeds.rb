# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"

Category.create! id: 1, name: "Truyen Kiem Hiep"

PublishingCompany.create! id: 1, name: "NXB Kim Dong"

Book.create! id: 1, name: "Anh Hung Xa Dieu", category_id: "1", 
  publishing_company_id: "1", price: "100", quantity: "50", 
  summary: "No Comment"
Book.create! id: 2, name: "Loc Dinh Ky", category_id: "1", 
  publishing_company_id: "1", price: "200", quantity: "100", 
  summary: "No Comment"
Book.create! id: 3, name: "Anh Hung Xa Dieu", category_id: "1", 
  publishing_company_id: "1", price: "150", quantity: "150", 
  summary: "No Comment"
