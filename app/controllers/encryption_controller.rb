class EncryptionController < ApplicationController

  def new
    @encryption = Encryption.new
  end

  def create
    @encryption = Encryption.create(message: params[:message])
    redirect_to encryption_path(@encryption)
  end

  def show
    @encryption = Encryption.find(params[:id])
    @encrypted = @encryption.encrypt_now
  end

  def decrypt

  end
end
