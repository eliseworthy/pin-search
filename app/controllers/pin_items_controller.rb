class PinItemsController < ApplicationController
  # GET /pin_items
  # GET /pin_items.json

  def index
    @pin_items = PinItem.pin_search(params[:search])
    render json: @pin_items
  end
end
