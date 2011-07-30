class MatchesController < InheritedResources::Base
  before_filter :authenticate_user!, :only => [:new, :create]
  
  def new
    @match = current_user.matches.build
  end

  def create
    @player1 = User.find_by_email(params[:match][:player1][:email])
    @player2 = User.find_by_email(params[:match][:player2][:email])

    @player1 = User.create(params[:match][:player1]) unless @player1
    @player2 = User.create(params[:match][:player2]) unless @player2

    @match = current_user.matches.build(player1: @player1, player2: @player2)

    if @player1.valid? && @player2.valid?
      @match.save
      redirect_to edit_match_path(@match)
    else
      render :new
    end
  end
end