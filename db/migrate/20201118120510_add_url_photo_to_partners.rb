class AddUrlPhotoToPartners < ActiveRecord::Migration[6.0]
  def change
    add_column :partners, :url_photo, :string
  end
end
