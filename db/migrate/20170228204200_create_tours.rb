class CreateTours < ActiveRecord::Migration[5.0]
  def change
    create_table :tours do |t|
      t.string :first_name
      t.string :email
      t.date :tour_date
      t.time :tour_time

      t.timestamps
    end
  end
end
