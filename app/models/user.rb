class User < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  has_many :relationships, foreign_key: "lure_id"

end
