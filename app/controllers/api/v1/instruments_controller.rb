class Api::V1::InstrumentsController < ApplicationController
  def index
    instruments = Instrument.all
    render json: instruments
  end

  def create
    instrument = Instrument.new(instrument_params)
    if instrument.save
      render json: instrument, status: :accepted
    else
      render json: {errors: instrument.errors.full_messages}, status: :unprocessible_entity
  end

  private

  def instrument_params
    params.require(:instrument).permit(:name, :description, :sound, :image, :tuning_id, :frequency)
end
