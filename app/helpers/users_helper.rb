module UsersHelper
  def followed_by(user, limit = nil)
    if User.followed_by(Current.user, user).first
      return User.followed_by(Current.user, user).first.full_name if limit == 1

      User.followed_by(Current.user, user)
    end
  end

  def img_src(user)
    if user.photo.attached?
      url_for(user.photo)
    else
      'https://picsum.photos/70/70'
    end
  end

  def show_follow?(user)
    Current.user != user && !Current.user.follows.include?(user)
  end
end
