class Lure < ActiveRecord::Base
  has_many :relationships
  has_many :users, :through => :relationships

  validates :name, presence: true
end
