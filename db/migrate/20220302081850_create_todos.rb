class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :about
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
