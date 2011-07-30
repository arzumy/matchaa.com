class AnswersController < ApplicationController
  before_filter :find_match
  before_filter :verify_token, :only => [:index]
  before_filter :sign_in_user, :only => [:index]
  before_filter :authenticate_user!

  def index

  end

  def sign_in_user
    user = params[:t] == @match.token1 ? @match.player1 : @match.player2
    sign_in(:user, user)
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