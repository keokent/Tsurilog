namespace :db do
  desc "Fill database with lure data"
  task generate_lures: :environment do
    Lure.create(name: "フリックシェイク 4.8",
                photo_url: "001.jpg",
                lure_type: 2)
    Lure.create(name: "XPOD Jr",
                photo_url: "002.jpg",
                lure_type: 1)
    Lure.create(name: "Cherry 44",
                photo_url: "003.jpg",
                lure_type: 1)
  end

  desc "Fill database with dummy relationship"
  task generate_relationships: :environment do
    user = User.create(name: "admin",
                       email: "example@example.com",
                       password: "hogemoge",
                       password_confirmation: "hogemoge")
    Lure.count.times { |n|
      user.relationships.create!(lure_id: n+1)
    }
  end 
end