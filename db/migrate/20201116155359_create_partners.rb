class CreatePartners < ActiveRecord::Migration[6.0]
  def change
    create_table :partners do |t|
      t.string :duty
      t.string :name
      t.string :gender
      t.integer :age
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
