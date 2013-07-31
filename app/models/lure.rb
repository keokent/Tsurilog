class Lure < ActiveRecord::Base
  has_many :relationships, foreign_key: "user_id"
end
