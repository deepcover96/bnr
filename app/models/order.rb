class Order < ActiveRecord::Base
  attr_accessible :name
  has_many :boxes
  validates :name, :presence => true
end
