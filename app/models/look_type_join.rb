class LookTypeJoin < ActiveRecord::Base
  belongs_to :look
  belongs_to :look_type
end
