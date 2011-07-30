class HomeController < ApplicationController
  before_filter :authenticate_user!, :only => [:test]
  def index
    render :layout => true
  end

  def test
  end
end