class PinItemsController < ApplicationController
  # GET /pin_items
  # GET /pin_items.json

  def index
    PinItem.pin_search(params[:search])
  end

end
