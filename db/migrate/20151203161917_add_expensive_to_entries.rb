class AddExpensiveToEntries < ActiveRecord::Migration
  def change
  	add_column :entries, :expense, :boolean
  end
end
