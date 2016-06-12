class InvoiceController < ApplicationController

  def index
  end
 
  #Should retrieve request from frontend to create a new param 
  def create
    invoiceParams = params[:invoice]
    puts invoiceParams.inspect

    #@invoice = Invoice.new
  end

  def show
  end

  def invoice_params
    params.require(:invoice).permit!
  end
end
