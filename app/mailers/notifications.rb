class Notifications < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.widget_creation.subject
  #
  def widget_creation(widget)
    @greeting = "Hi"
    @widget = widget

    mail :to => "wil.ruiz@gmail.com"
  end
end
