class PinItemsController < ApplicationController
  # GET /pin_items
  # GET /pin_items.json

  def index
    PinItem.all
  end
end
