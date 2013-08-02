class MonthlySpecialController < ApplicationController
  def featured
  	@featured_item = Widget.where(color: "blue").first
  	@widgets = Widget.all
  end
end
