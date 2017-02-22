class Career < ApplicationRecord
  mount_uploader :resume, ResumeUploader

  validates_exclusion_of :job_role, in: %w(Select), message: "can't be blank"

  validates :first_name, :last_name, :phone_number, :email, :street_address, :city, :state, :country, :zip_code, :job_role, presence: true

  validates_exclusion_of :state, in: %w(Select), message: "can't be blank"

  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end
end
