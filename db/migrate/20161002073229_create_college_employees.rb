class CreateCollegeEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :college_employees do |t|
      t.string :name
      t.text :company
      t.text :location
      t.string :phone_no

      t.timestamps
    end
  end
end
