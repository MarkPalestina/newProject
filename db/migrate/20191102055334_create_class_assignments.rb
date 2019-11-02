class CreateClassAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :class_assignments do |t|
      t.string :class_name
      t.datetime :due_date
      t.references :professor, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
