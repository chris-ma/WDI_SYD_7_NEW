class CreateLearners < ActiveRecord::Migration
  def change
    create_table :learners do |t|
      t.string :course
      t.text :description

      t.timestamps null: false
    end
  end
end
