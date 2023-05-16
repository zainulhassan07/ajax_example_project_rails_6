class User < ApplicationRecord

  has_many :items
  accepts_nested_attributes_for :items, reject_if: :all_blank, allow_destroy: true
  
  validates :name, :address, presence: true
  validates :email, :contact, presence: true, uniqueness: true
  
end
