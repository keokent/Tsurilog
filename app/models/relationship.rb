class Relationship < ActiveRecord::Base
  belongs_to :user
  belongs_to :lure
  validates :user_id, presence: true
  validates :lure_id, presence: true
end
