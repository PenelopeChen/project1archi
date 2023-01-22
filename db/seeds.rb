User.destroy_all
u1 = User.create :email => 'pen@ga.co', :password => 'chicken', :admin => true
u2 = User.create :email => 'jen@ga.co', :password => 'chicken'
puts "#{ User.count } users"

Architect.destroy_all
a1 = Architect.create(:name => 'Zaha Hadid', :nationality => 'Iraqi-British', :dob => '1950-10-31', :image => 'https://cdn.britannica.com/53/189253-004-99AE734A/Zaha-Hadid-Kensington-Gardens-London-Serpentine-Sackler-2013.jpg?s=1500x700&q=85')
a2 = Architect.create(:name => 'Tadao Ando', :nationality => 'Japanese', :dob => '1941-09-13', :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/Tadao_Ando_2004.jpg/601px-Tadao_Ando_2004.jpg?20210911223428')
a3 = Architect.create(:name => 'Maya Lin', :nationality => 'Asian-American', :dob => '1959-10-05', :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/63/Maya_Lin%2C_2014_%28cropped%29.jpg/220px-Maya_Lin%2C_2014_%28cropped%29.jpg')
a4 = Architect.create(:name => 'Bjarke Ingels', :nationality => 'Danish', :dob => '1974-10-02', :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Bjarke_Ingels.jpg/592px-Bjarke_Ingels.jpg?20121010201120')
a5 = Architect.create(:name => 'Antoni Gaudi', :nationality => 'Spanish', :dob => '1852-06-25', :image => 'https://upload.wikimedia.org/wikipedia/commons/4/42/Antoni_gaudi.jpg')
puts "#{ Architect.count } architects created."

Building.destroy_all
b1 = Building.create(:name => 'Guangzhou Opera House', :year => '2010', :style => 'deconstructivism', :place => 'Guangzhou, China', :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Guangzhou_Opera_House%28Near%29.JPG/250px-Guangzhou_Opera_House%28Near%29.JPG')
b2 = Building.create(:name => 'Church of the Light', :year => '1989', :style => 'modern', :place => 'Ibaraki, Japan', :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Ibaraki_Kasugaoka_Church_light_cross.jpg/250px-Ibaraki_Kasugaoka_Church_light_cross.jpg')
b3 = Building.create(:name => 'Vietnam Veterans Memorial', :year => '1982', :style => 'modern', :place => 'Washington, D.C., USA', :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/The_Wall%2C_end_to_end.jpg/280px-The_Wall%2C_end_to_end.jpg')
b4 = Building.create(:name => 'Vancouver House', :year => '2020', :style => 'neo-futurism', :place => 'Vancouver, Canada', :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Vancouver_House_-_22.jpg/280px-Vancouver_House_-_22.jpg')
b5 = Building.create(:name => 'La Sagrada Familia', :year => '1882-present', :style => 'gothic-revival', :place => 'Barcelona, Spain', :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/70/Sagrada_Familia_2021.jpg/220px-Sagrada_Familia_2021.jpg')
b6 = Building.create(:name => 'VM Houses', :year => '2005', :style => 'modern', :place => 'Copenhagen, Denmark', :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/VM_Houses.jpg/1280px-VM_Houses.jpg')
b7 = Building.create(:name => 'London Aquatic Centre', :year => '2011', :style => 'deconstructivism', :place => 'London, UK', :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/London%2C_England_%2815513446165%29.jpg/300px-London%2C_England_%2815513446165%29.jpg')
puts "#{ Building.count } buildings created."

# Associations
puts "Architects and users"
u1.architects << a1 << a2 << a3 
u2.architects << a4 << a5

puts "Buildings and users"
u1.buildings << b1 << b2 << b3 << b7
u2.buildings << b4 << b5 << b6