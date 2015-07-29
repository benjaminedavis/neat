class WhiskeyController < ApplicationController
  def index
    @whiskeys = Whiskey.all
  end

  def new
    @whiskey = Whiskey.new
  end

  def create
    @whiskey = Whiskey.new(post_params)
    if @whiskey.save
      redirect_to "/"
    else
      render "new"
    end
  end

  def show
    @whiskey = Whiskey.find(params[:id])
  end
end
