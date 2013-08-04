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
    Lure.create(name: "アベラバ 0.9g",
                photo_url: "004.jpg",
                lure_type: 1)
    Lure.create(name: "ソルティー Dr.ミノー 50FS",
                photo_url: "005.jpg",
                lure_type: 1)
    Lure.create(name: "アイシャッドテール 2.8インチ",
                photo_url: "006.jpg",
                lure_type: 2)
    Lure.create(name: "ゲーリーヤマモト　スーパグラブ 5インチ",
                photo_url: "007.jpg",
                lure_type: 2)
    Lure.create(name: "グランデフロッグ ライム",
                photo_url: "008.jpg",
                lure_type: 2)
    Lure.create(name: "キラーズベイト",
                photo_url: "009.jpg",
                lure_type: 1)
    Lure.create(name: "バズゼロツービート",
                photo_url: "010.jpg",
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