module OpinionHelper
  def show_delete?(user)
    Current.user == user
  end
end
