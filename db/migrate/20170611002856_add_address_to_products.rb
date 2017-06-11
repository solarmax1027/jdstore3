class AddAddressToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :province, :string
    add_column :products, :city, :string
    add_column :products, :district, :string
    add_column :products, :street, :string
  end
end
