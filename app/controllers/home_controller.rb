class HomeController < ApplicationController
  before_filter :authenticate_user!, :only => [:test]
  def index
    @match = Match.last
  end

  def test
  end
end