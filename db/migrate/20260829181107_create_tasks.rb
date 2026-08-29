class CreateTasks < ActiveRecord::Migration[8.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :priority
      t.date :due_date
      t.boolean :completed, default: false
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
