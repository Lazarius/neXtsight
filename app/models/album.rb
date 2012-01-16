class Album < ActiveRecord::Base

  belongs_to :parent,     :class_name => 'Album'
  has_many   :sub_albums, :class_name => 'Album'

  has_many   :documents, :class_name => 'Document'

  validates :name, :presence => true

  def self.roots
    self.where(:parent_id => nil)
  end

  def pictures
    self.documents.where(:type => Picture.name)
  end

  def movies
    self.documents.where(:type => Movie.name)
  end

  def has_sub_albums?
    !self.sub_albums.empty?
  end

end
