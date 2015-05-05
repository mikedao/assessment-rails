class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.boolean :active
      t.datetime :duedate
      t.integer :list_id

      t.timestamps null: false
    end
  end
end
