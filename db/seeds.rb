# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

puts "seeds start"
puts "destroy old pulse_categories"
PulseCategory.destroy_all
puts "destroy old categories"
Category.destroy_all
puts "destroy old pulses"
Pulse.destroy_all
puts "destroy old users"
User.destroy_all

puts "create new users"
felix = User.create!(email: "f@gmail.com", password: "azerty", nickname: "Felix")
manu = User.create!(email: "mm@gmail.com", password: "azerty", nickname: "Manu")
marin = User.create!(email: "m@gmail.com", password: "azerty", nickname: "Marin")
py = User.create!(email: "py@gmail.com", password: "azerty", nickname: "Py")

puts "create new categories"
category1 = Category.create!(name: "écologie", picto: "<i class='fas fa-leaf'></i>")
category2 = Category.create!(name: "culture", picto: "<i class='fas fa-theater-masks'></i>")
category3 = Category.create!(name: "transports", picto: "<i class='fas fa-bus'></i>")
category4 = Category.create!(name: "urbanisme", picto: "<i class='fas fa-city'></i>")
category5 = Category.create!(name: "autre", picto: "<i class='fas fa-question-circle'></i>")

puts "create new pulses"
# felix
pulse1 = Pulse.create!(user_id: felix.id, pulse_content: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.")
pulse2 = Pulse.create!(user_id: felix.id, pulse_content: "Ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.")
pulse3 = Pulse.create!(user_id: felix.id, pulse_content: "Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.")

# manu
pulse4 = Pulse.create!(user_id: manu.id, pulse_content: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.")
pulse5 = Pulse.create!(user_id: manu.id, pulse_content: "Ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.")
pulse6 = Pulse.create!(user_id: manu.id, pulse_content: "Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.")

# marin
pulse7 = Pulse.create!(user_id: marin.id, pulse_content: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.")
pulse8 = Pulse.create!(user_id: marin.id, pulse_content: "Ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.")
pulse9 = Pulse.create!(user_id: marin.id, pulse_content: "Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.")

# marin
pulse10 = Pulse.create!(user_id: py.id, pulse_content: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.")
pulse11 = Pulse.create!(user_id: py.id, pulse_content: "Ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.")
pulse12 = Pulse.create!(user_id: py.id, pulse_content: "Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.")

puts "create new pulse categories"
pulsecategory1 = PulseCategory.create!(pulse_id: pulse1.id, category_id: category1.id)
pulsecategory2 = PulseCategory.create!(pulse_id: pulse2.id, category_id: category2.id)
pulsecategory3 = PulseCategory.create!(pulse_id: pulse3.id, category_id: category3.id)
pulsecategory4 = PulseCategory.create!(pulse_id: pulse4.id, category_id: category4.id)
pulsecategory5 = PulseCategory.create!(pulse_id: pulse5.id, category_id: category5.id)
pulsecategory6 = PulseCategory.create!(pulse_id: pulse6.id, category_id: category1.id)
pulsecategory7 = PulseCategory.create!(pulse_id: pulse7.id, category_id: category2.id)
pulsecategory8 = PulseCategory.create!(pulse_id: pulse8.id, category_id: category3.id)
pulsecategory9 = PulseCategory.create!(pulse_id: pulse9.id, category_id: category4.id)
pulsecategory10 = PulseCategory.create!(pulse_id: pulse10.id, category_id: category5.id)
pulsecategory11 = PulseCategory.create!(pulse_id: pulse11.id, category_id: category1.id)
pulsecategory12 = PulseCategory.create!(pulse_id: pulse12.id, category_id: category2.id)

pulsecategory13 = PulseCategory.create!(pulse_id: pulse12.id, category_id: category1.id)
pulsecategory14 = PulseCategory.create!(pulse_id: pulse12.id, category_id: category3.id)


puts "all done"
