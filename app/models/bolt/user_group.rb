class Bolt::UserGroup < ActiveRecord::Base
  has_many :users
end
