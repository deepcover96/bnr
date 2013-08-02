require 'test_helper'

class WidgetTest < ActiveSupport::TestCase

  # Validation fails because an new widget does not
  # have a name, color or size and we validate these
  test "validations"  do
  	widget = Widget.new
  	assert !widget.valid?

  	# failure - still needs size and color
  	widget.name = "Hose"
   	assert !widget.valid?

   	# failure - needs color
   	widget.size = 5
   	assert !widget.valid?

   	# success
   	widget.color = "purple"
   	assert widget.valid?
  end
end


require 'test_helper'
