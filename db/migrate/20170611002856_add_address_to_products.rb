class AddAddressToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :province, :string
    add_column :products, :city, :string
    add_column :products, :district, :string
    add_column :products, :street, :string
    add_column :products, :address, :string  

    add_column :products, :latitude, :float
    add_column :products, :longitude, :float
  end
end
