class ClientsController < ApplicationController

  before_filter :authenticate_user!

  def index
    @clients = Client.all
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(params[:client].permit(:advertiser, :name, :phone, :email))

    if @client.save
      redirect_to @client
    else
      render 'new'
    end 
  end

  def show
    @client = Client.find(params[:id])
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])

    if @client.update(params[:client].permit(:advertiser, :name, :phone, :email))
      redirect_to @client
      else
        render 'edit'
    end
  end

  def destroy
  @client = Client.find(params[:id])
  @client.destroy
 
  redirect_to clients_path
  end

  private
  def client_params
    params.require(:client).permit(:advertiser, :name, :phone, :email)
  end

end
