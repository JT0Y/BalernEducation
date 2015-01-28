class InqueriesController < ApplicationController
  before_action :set_inquery, only: [:show, :edit, :update, :destroy]

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
    @inquery.save
    respond_with(@inquery)
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
      params[:inquery]
    end
end
