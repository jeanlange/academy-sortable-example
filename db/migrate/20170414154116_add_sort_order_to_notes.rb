class AddSortOrderToNotes < ActiveRecord::Migration[5.0]
  def change
    add_column :notes, :sort_order, :integer
  end
end
