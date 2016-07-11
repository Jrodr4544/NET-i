class Company < ActiveRecord::Base
  has_many    :sites
  has_many    :users
  # Below not in use
  # has_many    :users, :source => 'admin' 
end