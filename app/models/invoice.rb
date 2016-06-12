class Invoice < ActiveRecord::Base
  has_one :client
  has_many :tasks 
end
