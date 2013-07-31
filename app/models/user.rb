class User < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  has_many :relationships
  has_many :luers, :through => :relationships
end
