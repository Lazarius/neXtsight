class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.references :user

      t.string     :name,         :null => false
      t.text       :description
      t.string     :location
      t.integer    :parent_id

      t.timestamps
    end
  end
end
