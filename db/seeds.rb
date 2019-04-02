# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
url = "https://www.chanel.com/us/img/t_resize-look/q_auto,f_jpg,fl_lossy,dpr_2/w_501/prd/sys-master/content/h2e/hae/8823585505310"
Listing.create!(price: '¥1000', detail: 'spring-summer 2019 haute couture', brand: 'Chanel', size: 'S-6-10-38', remote_photo_url: url)

