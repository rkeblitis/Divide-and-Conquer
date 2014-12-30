class User < ActiveRecord::Base
  has_many :payments
  has_manu :bills, :through => :payments
end
