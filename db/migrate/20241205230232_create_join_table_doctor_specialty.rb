class CreateJoinTableDoctorSpecialty < ActiveRecord::Migration[7.0]
  def change
    create_join_table :doctors, :specialties do |t|
      t.index :doctor_id
      t.index :specialty_id
    end
  end
end
