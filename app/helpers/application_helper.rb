module ApplicationHelper
  def banner(match)
    render :partial => 'shared/banner', locals: { match: match }
  end
end
