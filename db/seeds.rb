# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
#...
Product.create(:title => 'Programming Ruby 1.9',
  :description =>
    %{<p>
        Ruby is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox.
      </p>},
  :image_url => 'https://media.pragprog.com/titles/rails4/code/rails30/depot_b/public/images/debug.jpg',
  :price => 49.50)

	Product.create(:title => 'Programming Ruby 1.8',
	  :description =>
	    %{<p>
	        Ruby is the fastest growing and most exciting dynamic language
	        out there. If you need to get working programs delivered fast,
	        you should add Ruby to your toolbox.
	      </p>},
	  :image_url => 'https://media.pragprog.com/titles/rails4/code/rails30/depot_b/public/images/rtp.jpg',
	  :price => 49.50)

Product.create(:title => 'Programming Ruby 1.7',
  :description =>
    %{<p>
        Ruby is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox.
      </p>},
  :image_url => 'https://media.pragprog.com/titles/rails4/code/rails30/depot_b/public/images/ruby.jpg',
  :price => 49.50)
Product.create(:title => 'Programming Ruby 1.6',
  :description =>
    %{<p>
        Ruby is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox.
      </p>},
  :image_url => 'https://media.pragprog.com/titles/rails4/code/rails30/depot_b/public/images/wd4d.jpg',
  :price => 49.50)
