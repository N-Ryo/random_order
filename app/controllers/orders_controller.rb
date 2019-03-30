class OrdersController < ApplicationController
  include Order
  def index
  end

  def show
    @results = []

  end

  def create
    @peaple = params[:peaple].to_i
    respond_to do |format|
      format.html { render :index }
      format.js
    end
  end

  def order
    @results = []
    @results = order(params[:peaple])
    render :show
  end
end
