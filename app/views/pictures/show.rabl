object     @picture
attributes :name, :description, :photo_file_name, :photo_content_type
child      :photo => 'photo' do
  node :url_big     do  @picture.photo.url(:big) end
  node :url_medium  do  @picture.photo.url(:big) end
  node :url_thumb   do  @picture.photo.url(:big) end
end

