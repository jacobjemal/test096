class ApplicationController < ActionController::Base
  before_action :set_notifications, if: :current_user

  private

  def set_notifications
    notifications = Notification.where(recipient: current_user).newst_first.limit(9)
    @unread = notification.unread
    @read = notification.read
  end
end
