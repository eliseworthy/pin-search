class PinItemsController < ApplicationController
  # GET /pin_items
  # GET /pin_items.json

  def index
    @pin_items = PinItem.all

    render :json @pin_items
  end
end
