# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
#...
@product = Product.new(title: 'Programming Ruby 1.9',
  description:
    %{
        Ruby 1.9 is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox.
      },price: 49.50)
@product.image = File.new(Rails.root.join('app', 'assets', 'images', "image1.jpeg"))
@product.save

@product = Product.new(title: 'Programming Ruby 1.8',
	  description:
	    %{
	        Ruby 1.8 is the fastest growing and most exciting dynamic language
	        out there. If you need to get working programs delivered fast,
	        you should add Ruby to your toolbox.
	      },price: 49.50)
@product.image = File.new(Rails.root.join('app', 'assets', 'images', "image2.jpeg"))
@product.save

@product = Product.new(title: 'Programming Ruby 1.7',
  description:
    %{
        Ruby 1.7 is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox.
      },price: 49.50)
@product.image = File.new(Rails.root.join('app', 'assets', 'images', "image3.jpeg"))
@product.save

@product = Product.new(title: 'Programming Ruby 1.6',
  description:
    %{
        Ruby 1.6 is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox.
      },price: 49.50)
@product.image = File.new(Rails.root.join('app', 'assets', 'images', "image4.jpeg"))
@product.save


