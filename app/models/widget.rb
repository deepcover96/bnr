class Widget < ActiveRecord::Base
  attr_accessible :color, :description, :name, :size, :box_id
  belongs_to :box
  validates :name,  :presence => true,
  					:length => { :minimum => 4 }
  validates :size,	:presence => true,
  					:numericality => true
  validates :color,	:presence => true


end
