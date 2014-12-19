class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :closet, dependent: :destroy
  has_many :clothes, through: :closet
  belongs_to :user
  # delegate :clothes, to: :closet

  after_create :give_user_a_closet
  
  def give_user_a_closet
    Closet.create(user_id: self.id) 
  end
end
