class DecryptionController < ApplicationController

  def new
    @decryption = Decryption.new
  end

  def create
    @decryption = Decryption.create(create_params)
    if @encryption.save
      redirect_to encryption_path(@encryption)
    else
      render :new
    end
  end

  def show
    @decryption = Decryption.find(params[:id])
    @decrypted = @decryption.decrypt_now
  end


  private

  def create_params
    params.require(:decryption).permit(:message)
  end
end
