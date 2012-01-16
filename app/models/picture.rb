class Picture < Document

  has_attached_file :photo, {
      :styles => { :big => "800x800>", :medium => "300x300>", :thumb => "120x120>" },
      :url => "/system/pictures/:hash.:extension",
      :hash_secret => "36f4e442578658147f6fc4d9255126c166718641"
  }

  validates_attachment_presence :photo

  before_save :extract_exif

  protected
  def extract_exif
    self.exif = "ToDo"
  end

end
