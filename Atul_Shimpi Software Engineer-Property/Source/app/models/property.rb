class Property < ActiveRecord::Base
  include Filterable

  belongs_to :user
  belongs_to :property_type
  belongs_to :purchase_type

  has_one :address, :dependent => :destroy
  accepts_nested_attributes_for :address
  #attr_accessor  :address, :address_attributes

  validates :property_type_id, presence: true
  validates :area, presence: true, numericality: { only_integer: true, greater_than: 100 }
  validates :price, presence: true, numericality: { only_integer: true, greater_than: 100 }

  scope :property_type_id, -> (property_type_id) { where property_type_id: property_type_id }
  scope :purchase_type_id, -> (purchase_type_id) { where purchase_type_id: purchase_type_id }
  scope :user_id, -> (user_id) { where user_id: user_id }
end
