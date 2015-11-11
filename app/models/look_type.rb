class LookType < ActiveRecord::Base
	 has_many :look_type_joins
  has_many :looks, through: :look_type_joins
end
