class NewTables < ActiveRecord::Migration[6.0]
  def change
    add_column :authors, :nationality, :string
  end
end
