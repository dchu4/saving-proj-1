class Career < ApplicationRecord
  mount_uploader :resume, ResumeUploader

  validates :first_name, :last_name, :phone_number, :email, :street_address, :city, :state, :country, :zip_code, :job_role, presence: true

  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end
end
