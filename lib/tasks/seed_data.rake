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
end