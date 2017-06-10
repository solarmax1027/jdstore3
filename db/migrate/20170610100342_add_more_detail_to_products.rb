class AddMoreDetailToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :cookname, :string
    add_column :products, :location, :string


  end
end
