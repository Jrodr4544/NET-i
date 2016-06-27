class Site < ActiveRecord::Base
  belongs_to  :company
  has_many    :contacts
  has_many    :assets
end