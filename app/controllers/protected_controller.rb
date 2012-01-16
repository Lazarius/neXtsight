#
# Copyright ©2010-2012 Maxime Menant
#
# Created by: mmenant
# Created on: 16/01/12
# 


class ProtectedController < ApplicationController

  before_filter :authenticate_user!


end
