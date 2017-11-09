class AddAncestryToSource < ActiveRecord::Migration[5.1]
  def change
    add_column :sources, :ancestry, :string
    add_index :sources, :ancestry
  end
end
