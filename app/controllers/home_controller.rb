class HomeController < ApplicationController
  def index
    return unless Current.user
    
    @home_opinions = User.home_opinions(Current.user)
    @who_to_follow = User.who_to_follow(Current.user)
  end
end
