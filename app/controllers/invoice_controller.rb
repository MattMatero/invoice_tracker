class InvoiceController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  def index
  end
 
  #Should retrieve request from frontend to create a new param 
  def create
    invoiceParams = params[:invoice]
    client = params[:client] unless invoiceParams.nil?
    tasks = params[:tasks] unless invoiceParams.nil?
    puts invoiceParams.inspect
    puts client.inspect
    puts tasks.inspect

    #@invoice = Invoice.new
  end

  def show
  end

  def invoice_params
    params.require(:invoice).permit!
  end
end
