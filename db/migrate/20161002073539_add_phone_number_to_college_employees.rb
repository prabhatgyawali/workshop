class AddPhoneNumberToCollegeEmployees < ActiveRecord::Migration[5.0]
  def change
    add_column :college_employees, :phone_number, :string
  end
end
