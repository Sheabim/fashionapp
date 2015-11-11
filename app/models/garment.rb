class Garment < ActiveRecord::Base
	validates :photo, :garment_type_id, :wardrobe_id, presence: true
  belongs_to :wardrobe
  belongs_to :garment_type
  has_many :look_garments
  has_many :looks, through: :look_garments #garment could go in mnay looks
mount_uploader :photo, GarmentPhotoUploader
end

