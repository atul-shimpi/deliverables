class User < ActiveRecord::Base
  belongs_to :role
  attr_accessor :password, :password_confirmation

  validates :name, presence: true, length:  { in:  6..30 }
  validates :email_id, presence: true, uniqueness: true, length: { :in => 6..25 }
  validates :password, presence: true, :confirmation => true #password_confirmation attr
  validates_length_of :password, :in => 6..25, :on => :create

  before_save :encrypt_password
  after_save :clear_password

  def encrypt_password
    if password.present?
      self.salt = BCrypt::Engine.generate_salt
      self.encrypted_password= BCrypt::Engine.hash_secret(password, salt)
    end
  end

  def clear_password
    self.password = nil
  end

  def self.authenticate(email="", login_password="")
    user = User.find_by_email_id(email)

    user if user && user.match_password(login_password)
  end

  def match_password(login_password="")
    encrypted_password == BCrypt::Engine.hash_secret(login_password, salt)
  end
end
