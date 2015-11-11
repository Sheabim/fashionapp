class CreateLookTypeJoins < ActiveRecord::Migration
  def change
    create_table :look_type_joins do |t|
      t.references :look, index: true, foreign_key: true
      t.references :look_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
