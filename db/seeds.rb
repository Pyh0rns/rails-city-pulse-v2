# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

puts "seeds start"
puts "destroy old categories"
Category.destroy_all
puts "destroy old pulse_categories"
PulseCategory.destroy_all
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
category1 = Category.create!(name: "écologie")

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
pulsecategory2 = PulseCategory.create!(pulse_id: pulse12.id, category_id: category1.id)

puts "all done"
