class Album < ActiveRecord::Base

  belongs_to :parent,     :class_name => 'Album'
  has_many   :sub_albums, :class_name => 'Album'

  validates :name, :presence => true

  def self.roots
    self.where(:parent_id => nil)
  end

  def has_sub_albums?
    !self.sub_albums.empty?
  end

end
