class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :email
      t.datetime :start_date
      t.datetime :end_date
      t.integer :people

      t.timestamps
    end
  end
end
