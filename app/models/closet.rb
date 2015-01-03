class Closet < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  has_many :clothes, dependent: :destroy
  has_one :picture, as: :picable, dependent: :destroy
end
