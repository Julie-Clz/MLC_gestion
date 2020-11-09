class PagesController < ApplicationController
  def home
    @services = Service.all
  end

  def about
  end

  def cgv
  end
  
end
