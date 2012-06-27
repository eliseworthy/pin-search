class PinItemsController < ApplicationController
  # GET /pin_items
  # GET /pin_items.json

  def index
  	if params[:search]
      @pin_items = PinItem.pin_search(params[:search])
    else
      @pin_items = PinItem.all
     end
    render json: @pin_items
  end
end
