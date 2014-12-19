class Clothe < ActiveRecord::Base
  belongs_to :closet
  belongs_to :user
  has_one :picture, as: :picable, dependent: :destroy
end
