class WelcomeController < ApplicationController

  def index
    @inquery = Inquery.new
    render layout: false
  end
end