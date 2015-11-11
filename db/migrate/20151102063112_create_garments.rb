class CreateGarments < ActiveRecord::Migration
  def change
    create_table :garments do |t|
      t.references :wardrobe, index: true, foreign_key: true
      t.references :garment_type, index: true, foreign_key: true
      t.string :photo

      t.timestamps null: false
    end
  end
end
