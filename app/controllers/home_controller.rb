class HomeController < ApplicationController
  before_filter :authenticate_user!, :only => [:test]
  def index
    @pending_matches  = Match.pending.order("id DESC").limit(6)
    @completed_matches = Match.completed.order("id DESC").limit(5)
  end
end