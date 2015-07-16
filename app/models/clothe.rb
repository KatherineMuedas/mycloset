class Clothe < ActiveRecord::Base
  belongs_to :closet
  belongs_to :user
  has_one :picture, as: :picable, dependent: :destroy

  accepts_nested_attributes_for :picture

  validates :name, :purchase_at, :brand, :type_category, presence: true
  
  
end
