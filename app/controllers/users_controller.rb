class UsersController < ApplicationController
  layout "pages"

  def show
    @user = User.find_by(id: params[:id])
  end
end
