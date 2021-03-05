class AddDescriptionToInstruments < ActiveRecord::Migration[6.0]
  def change
    add_column :instruments, :description, :string
    add_column :instruments, :image, :string
  end
end
