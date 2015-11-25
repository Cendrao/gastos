class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :name
      t.decimal :value
      t.date :date

			t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
