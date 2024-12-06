class Doctor < ApplicationRecord
  # Associations
  belongs_to :city
  has_and_belongs_to_many :specialties
  has_many :appointments
  has_many :patients, through: :appointments

  # Validations
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :zip_code, presence: true
  validates :city, presence: true

  # Méthode pour obtenir le nom complet du docteur
  def full_name
    "#{first_name} #{last_name}"
  end
end
