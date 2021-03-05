class AddTuningidToInstruments < ActiveRecord::Migration[6.0]
  def change
    add_column :instruments, :tuning_id, :int
  end
end
