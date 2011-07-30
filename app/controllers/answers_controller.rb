class AnswersController < ApplicationController
  before_filter :find_match
  before_filter :verify_token, :only => [:index]
  before_filter :sign_in_user, :only => [:index]
  before_filter :authenticate_user!

  def index
  end

  def create
    params[:answer][:questions].each do |question|
      current_user.answers.create(match: @match, question_id: question.first,  body: question.last)
    end
    flash[:notice] = "Awesome. You are a brave man"
    redirect_to match_path(@match)
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