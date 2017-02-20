class AddReferralToCareer < ActiveRecord::Migration[5.0]
  def change
    add_column :careers, :referral, :string
  end
end
