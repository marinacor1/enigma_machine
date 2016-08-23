class EncryptionController < ApplicationController

  def new
    @encryption = Encryption.new
  end

  def create
    @encryption = Encryption.create(create_params)
    if @encryption.save
      redirect_to encryption_path(@encryption)
    else
      render :new
    end
  end

  def show
    @encryption = Encryption.find(params[:id])
    @encrypted = @encryption.encrypt_now
  end

  def decrypt

  end

  private

  def create_params
    params.require(:encryption).permit(:message)
  end
end
