class AddAddressToPartners < ActiveRecord::Migration[6.0]
  def change
    add_column :partners, :address, :string
  end
end
