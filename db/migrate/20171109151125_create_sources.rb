class CreateSources < ActiveRecord::Migration[5.1]
  def change
    create_table :sources do |t|
      t.string :category
      t.string :name
      t.string :display_name
      t.string :icon_url
      t.string :client_type

      t.timestamps
    end
  end
end
