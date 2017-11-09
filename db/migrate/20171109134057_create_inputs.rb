class CreateInputs < ActiveRecord::Migration[5.1]
  def change
    create_table :inputs do |t|
      t.text :content
      t.string :application
      t.string :client_type
      t.string :tones

      t.timestamps
    end
  end
end
