namespace :db do
  desc "Fill database with lure data"
  task generate_lures: :environment do
    lure = Lure.create(name: "フリックシェイク 4.8",
                      photo_url: "001.jpg",
                      lure_type: 2)
    lure = Lure.create(name: "XPOD Jr",
                      photo_url: "002.jpg",
                      lure_type: 1)
  end

  desc "Fill database with dummy relationship"
  task generate_relationships: :environment do
    user = User.find_by(id: 1)
    Lure.count.times { |n|
      user.relationships.create!(lure_id: n)
    }
  end 
end