class CreatePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.string :url
      t.string :alt
      t.references :serie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
