class ClientsController < ApplicationController
  def create
    @client = Client.new(client_params)
    @client.save
    redirect_to :back
  end

  private

  def client_params
    params.require(:client).permit(:email)
  end
end
