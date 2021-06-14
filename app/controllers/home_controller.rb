class HomeController < ApplicationController
  def index
    if Current.user
      @home_opinions = Current.user.home_opinions
      @who_to_follow = User.who_to_follow(Current.user)
    end
  end
end
