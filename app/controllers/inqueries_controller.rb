class InqueriesController < ApplicationController
  before_action :set_inquery, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:show, :index]
  before_filter :verify_is_admin, only: [:show, :index]

  respond_to :html

  def index
    @inqueries = Inquery.all
    respond_with(@inqueries)
  end

  def show
    respond_with(@inquery)
  end

  def new
    @inquery = Inquery.new
    respond_with(@inquery)
  end

  def edit
  end

  def create
    @inquery = Inquery.new(inquery_params)
    if @inquery.save
      redirect_to root_path, notice: 'Your Inquery has successfully been sent!'
    else
      render action: 'new'
    end
  end

  def update
    @inquery.update(inquery_params)
    respond_with(@inquery)
  end

  def destroy
    @inquery.destroy
    respond_with(@inquery)
  end

  private

    def set_inquery
      @inquery = Inquery.find(params[:id])
    end

    def inquery_params
      params.require(:inquery).permit(:name, :phone, :email, :message)
    end
end
