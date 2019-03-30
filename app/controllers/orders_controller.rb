class OrdersController < ApplicationController
  def index
  end

  def show
    @results = []
    params[:howmany].to_i.times do |i|
      @results.push(params[:peaple][:"person#{i}"])
    end
    @results.shuffle!
  end

  def create
    @peaple = params[:peaple].to_i
    respond_to do |format|
      format.html { render :index }
      format.js
    end
  end

end
