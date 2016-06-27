class Company < ActiveRecord::Base
  has_many    :sites
  has_many    :users
  has_many    :users, :source => 'admin'
end