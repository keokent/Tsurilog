FactoryGirl.define do
  factory :user do
    name "Yamada Takashi"
    email "yamada@example.com"
    password_digest "password"
    password_confirmation "password"
    password "password"
  end

  factory :lure do
    name "minnow"
    photo_url "/etc/lure_photo/1.jpg"
    lure_type "1"
  end

  factory :review do
    content "Coooooooooool Review"
    user_id "1"
    lure_id "1"
  end
end
