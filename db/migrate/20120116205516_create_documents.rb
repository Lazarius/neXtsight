class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.references :album,    :null => false
      t.string     :type,     :null => false
      t.string     :name,     :null => false
      t.text       :description
      t.string     :tags

      # For Picture
      t.has_attached_file :photo
      t.text              :exif
      t.string            :location

      t.timestamps
    end
  end
end
