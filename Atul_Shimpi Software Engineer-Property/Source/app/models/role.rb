class Role < ActiveRecord::Base
  enum role_type: {admin: 1, agent: 2, buyer: 3, buyer_and_seller: 4}

  validates :role_type, presence: true
  validates :name, presence: true, length: { maximum: 30 }
  validates :description, presence: true, length: { maximum: 50 }
end
