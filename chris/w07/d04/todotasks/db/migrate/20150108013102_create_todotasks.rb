class CreateTodotasks < ActiveRecord::Migration
  def change
    create_table :todotasks do |t|
      t.string :text
      t.text :notes
      t.boolean :completed
      t.datetime :timestamp

      t.timestamps null: false
    end
  end
end
