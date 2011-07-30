class AnswersController < ApplicationController
  before_filter :find_match
  before_filter :verify_token, :only => [:index]

  def index
    head :ok
  end

  def verify_token
    unless [@match.token1, @match.token2].include?(params[:t])
      flash[:alert] = "Your authentication token might be expired"
      redirect_to root_path 
    end
  end

  def find_match
    @match = Match.find(params[:match_id])
  end
end