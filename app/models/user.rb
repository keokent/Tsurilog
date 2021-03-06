class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  before_create :create_remember_token

  has_many :reviews, dependent: :destroy
  has_many :relationships
  has_many :lures, :through => :relationships

  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :password_confirmation, presence: true

  has_secure_password

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def register?(lure)
    relationships.find_by(lure_id: lure.id)
  end

  def register!(lure)
    relationships.create(lure_id: lure.id)
  end

  def unregister!(lure)
    relationships.find_by(lure_id: lure.id).destroy!
  end

  private

    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end
end
