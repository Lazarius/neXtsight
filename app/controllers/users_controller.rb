#
# Copyright ©2010-2012 Maxime Menant
#
# Created by: mmenant
# Created on: 16/01/12
# 


class UsersController < ProtectedController

  def show
    @user = User.find params[:id]

    respond_to do |format|
      format.html  {}
      format.json  {}
      format.xml   {}
    end
  end

end
