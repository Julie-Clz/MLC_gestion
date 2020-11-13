class QuotationsController < ApplicationController

  def new
    @quotation = Quotation.new
  end
  
  def create
    @quotation = Quotation.new(params[:quotation])
    @quotation.request = request
    if @quotation.deliver
      flash.now[:error] = nil
    else
      flash.now[:error] = "Votre demande de devis n'a pas pu être envoyé."
      render :new
    end
  end
end
