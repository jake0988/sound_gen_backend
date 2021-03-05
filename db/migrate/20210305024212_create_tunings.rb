class CreateTunings < ActiveRecord::Migration[6.0]
  def change
    create_table :tunings do |t|
      t.string :name

      t.timestamps
    end
  end
end
