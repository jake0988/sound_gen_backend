class Api::V1::InstrumentsController < ApplicationController
  def index
    instruments = Instrument.all
    options = {
      include: [:tuning]
    }
¸    render json: InstrumentSerializer.new(instruments, options)
  end

  def create
    instrument = Instrument.new(instrument_params)
    if instrument.save
      render json: InstrumentSerializer.new(instrument), status: :accepted
    else
      render json: {errors: instrument.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def destroy
    byebug
  end

  private

  def instrument_params
    params.require(:instrument).permit(:name, :description, :sound, :image_url, :tuning_id, :frequency)
  end

end
