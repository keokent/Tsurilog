class User < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  has_many :relationships
  has_many :luers, :through => :relationships

  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :password_confirmation, presence: true

  has_secure_password
end
