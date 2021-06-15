module UsersHelper
  def followed_by(user)
    User.followed_by(Current.user,user).first.full_name if User.followed_by(Current.user,user).first 
  end
end
