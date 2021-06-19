class OpinionsController < ApplicationController
  before_action :set_opinion, only: %i[show edit update destroy]

  def new
    @opinion = Opinion.new
    @opinions = Opinion.order_by_most_recent
  end

  def create
    @opinion = Current.user.opinions.build(opinion_params)
    if @opinion.save
      flash[:notice] = 'Opinion was created successfully'
      redirect_back(fallback_location: root_path)
    else
      flash.now[:alert] = 'Something went wrong...'
    end
  end

  def destroy
    @opinion.destroy
    redirect_back(fallback_location: root_path)
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_opinion
    @opinion = Opinion.find(params[:id])
  end

  def opinion_params
    params.require(:opinion).permit(:text)
  end
end
