class HomeController < ApplicationController
  def index
    return unless Current.user

    @home_opinions = Current.user.home_opinions
    @who_to_follow = User.who_to_follow(Current.user)
  end
end
