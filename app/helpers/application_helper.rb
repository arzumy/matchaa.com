module ApplicationHelper
  def banner(match)
    render :partial => 'shared/banner', locals: { player1: match.player1, player2: match.player2 }
  end
end
