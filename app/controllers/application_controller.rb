class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :initialize_pages_layout

  def initialize_pages_layout
    @navbar_categories = Category.all
  end


end
