class Closet < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  has_many :clothes, dependent: :destroy
end
