object     @user
attributes :login, :email
child      :albums do
  attributes :id, :name
end
