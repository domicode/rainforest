class User < ActiveRecord::Base
  has_many :reviews
  has_many :products, :through => :reviews 

  validates :email, :presence => true, :uniqueness => {message: "already taken, please chose another one"}

  has_secure_password
end
