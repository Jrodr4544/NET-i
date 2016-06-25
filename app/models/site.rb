class Site < ActiveRecord::Base
  belongs_to  :client
  has_many    :contacts
  has_many    :assets
end