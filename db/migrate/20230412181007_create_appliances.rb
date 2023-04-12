class CreateAppliances < ActiveRecord::Migration[7.0]
  def change
    create_table :appliances do |t|
      t.string :name
      t.string :color
      t.string :location

      t.timestamps
    end
  end
end
