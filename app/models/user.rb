class User < ActiveRecord::Base
  has_many :payments
  has_many :bills, :through => :payments
  has_secure_password
end
