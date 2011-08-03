class HomeController < ApplicationController
  before_filter :authenticate_user!, :only => [:test]
  def index
    @match = Match.last
    @list = Match.all
    @pending_match = Match.find(:all, :order => "created_at DESC", :conditions => {status:'pending'})
    @finished_match = Match.find(:all, :order => "created_at DESC", :conditions => {status:'finish'})

  end

  def test
  end
end