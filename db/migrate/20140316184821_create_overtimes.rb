class CreateOvertimes < ActiveRecord::Migration
  def change
    create_table :overtimes do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.text :description

      t.timestamps
    end
  end
end
