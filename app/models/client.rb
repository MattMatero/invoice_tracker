class Client < ActiveRecord::Base
  belongs_to :invoice

  def self.create_client(client_params, invoice_id)
    c = Client.create()
    c.f_name = client_params[:f_name]
    c.l_name = client_params[:l_name]
    c.email = client_params[:email]
    c.phone = client_params[:phone]
    c.invoice_id = invoice_id

    return c
  end

end
