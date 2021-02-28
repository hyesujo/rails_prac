class AddColsToPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :name, :string
    add_column :people, :phone, :string
    add_column :people, :address, :string
    add_column :people, :post_code, :string
  end
end
