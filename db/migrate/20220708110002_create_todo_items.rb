class CreateTodoItems < ActiveRecord::Migration[7.0]
  def change
    create_table :todo_items do |t|
      t.boolean :status
      t.string :description
      t.references :creator, null: false, foreign_key: { to_table: :users }
      t.references :cc, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
