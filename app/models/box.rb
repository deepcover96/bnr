class Box < ActiveRecord::Base
  attr_accessible :color, :material, :order_id
  belongs_to :order
  has_one :widget
  validates :color, :presence => true,
  					:uniqueness => true,
  					:inclusion => { :in => ["red", "white", "blue"] }

  scope :without_oders, -> { where(order_id: nil) }

  def description
  	"A " + self.color + " " + self.material + " box."
  end
end