class User < ActiveRecord::Base
  has_one :company
  has_secure_password
end