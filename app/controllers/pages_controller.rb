class PagesController < ApplicationController
  before_action :authenticate_user!
  def home
  	@resources = Resource.all
  	@events = Event.order(start_time: :desc)
  	@homeworks = Homework.all
  end

  def about 
	end 


end
