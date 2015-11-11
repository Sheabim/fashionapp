class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_one :wardrobe
         has_many :looks


	after_create :build_wardrobe, :build_look

	def build_wardrobe
		@wardrobe = Wardrobe.create(user_id: self.id) 
	end

	def build_look
		@look = Look.create(user_id: self.id)
	end
end