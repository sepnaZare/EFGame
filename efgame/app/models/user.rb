class User < ActiveRecord::Base
  acts_as_easy_captcha
  validate :valid_captcha?, :on => :create

  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  validate :password_complexity

  def password_complexity
    if password.present? and not password.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d). /)
      # errors.add :password, "must include at least one lowercase letter, one uppercase letter, and one digit"
      errors.add :password, "باید حتما شامل حداقل یک حرف بزرگ, یک حرف کوچک و رقم باشد."
    end
  end
end
