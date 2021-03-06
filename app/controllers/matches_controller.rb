class MatchesController < InheritedResources::Base
  before_filter :authenticate_user!, :only => [:new, :create, :mine]

  def show
    @player1_answers = resource.player1_answers
    @player2_answers = resource.player2_answers
    show!
  end

  def new
    @match = current_user.matches.build
  end

  def create
    @player1 = User.find_by_email(params[:match][:player1][:email]) || User.create(params[:match][:player1])
    @player2 = User.find_by_email(params[:match][:player2][:email]) || User.create(params[:match][:player2])

    @match = current_user.matches.build(player1: @player1, player2: @player2)

    if @player1.valid? && @player2.valid?
      @match.save
      redirect_to edit_match_path(@match)
    else
      render :new
    end
  end

  def edit
    @categories = Category.all
    edit!
  end

  def finalize
    category_id = params[:match][:category_id]
    resource.update_attributes(category_id: category_id, question_ids: params[:match][:category][category_id][:questions])
    resource.send_invites!
    flash[:notice] = 'Awesome! Your friends will be invited to answer the question in a bit. Meanwhile share this page with the others'
    redirect_to match_path(resource)
  end

  def mine
    @matches = current_user.matches
  end
end