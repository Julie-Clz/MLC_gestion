class PagesController < ApplicationController
  def home
    @services = Service.all
  end

  def about
  end
end
