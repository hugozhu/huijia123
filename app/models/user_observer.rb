class UserObserver < ActiveRecord::Observer

  def after_create(user)
    user.reload
    UserMailer.signup_notification(user).deliver
  end

  def after_save(user)
    user.reload
    UserMailer.activation(user).deliver if user.recently_activated?
  end

end
