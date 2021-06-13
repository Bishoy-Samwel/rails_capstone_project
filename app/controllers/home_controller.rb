class HomeController < ApplicationController
  def index
   @home_opinions = Current.user.home_opinions  if Current.user
  end
end
