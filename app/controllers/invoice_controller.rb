
class InvoiceController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  def index
  end
 
  def create
  end

  def submit
    invoiceParams = params[:invoice]
    client_params = params[:invoice][:client] 
    tasks_params = params[:invoice][:tasks]

    @invoice = Invoice.create()

    c = Client.create_client(client_params, @invoice.id)
    

    t = Task.make_tasks(tasks_params, @invoice.id)
    
    if @invoice.save && c.save
      render json: @invoice, status: :created, serializer: InvoiceSerializer
    else
      render json: @invoice.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
  end

  private

  def invoice_params
    params.require(:invoice).permit!
  end
end

