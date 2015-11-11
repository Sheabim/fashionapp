class Look < ActiveRecord::Base
  
  belongs_to :user
  has_many :look_garments
  has_many :garments, through: :look_garments
    has_many :look_type_joins
  has_many :look_types, through: :look_type_joins

  validates :name, presence: true
end
