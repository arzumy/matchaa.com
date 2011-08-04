module ApplicationHelper
  def banner(match)
    render :partial => 'shared/banner', locals: { match: match } if match
  end
end
