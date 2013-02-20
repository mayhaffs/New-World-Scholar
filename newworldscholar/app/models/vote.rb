class Vote < ActiveRecord::Base
  attr_accessible :resource_id, :user_id
end
