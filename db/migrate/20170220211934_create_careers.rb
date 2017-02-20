class CreateCareers < ActiveRecord::Migration[5.0]
  def change
    create_table :careers do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :phone_number
      t.string :email
      t.string :street_address
      t.string :apt_number
      t.string :city
      t.string :state
      t.string :country
      t.string :zip_code
      t.string :job_role
      t.string :resume

      t.timestamps
    end
  end
end
