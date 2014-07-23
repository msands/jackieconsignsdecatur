class AddFieldsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :name, :string
    add_column :products, :product_type, :string
  end
end
