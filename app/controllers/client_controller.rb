class ClientController < ApplicationController

  private 

  def client_params
    params.require(:invoice).permit(:f_name, :l_name, :email, :phone)
  end

end
