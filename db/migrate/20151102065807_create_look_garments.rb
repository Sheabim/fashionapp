class CreateLookGarments < ActiveRecord::Migration
  def change
    create_table :look_garments do |t|
      t.references :look, index: true, foreign_key: true
      t.references :garment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
