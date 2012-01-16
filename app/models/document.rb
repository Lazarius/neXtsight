class Document < ActiveRecord::Base
  
  belongs_to :album, :class_name => 'Album'

  validates :name,  :presence => true
  validates :album, :presence => true
end
