class EncryptionController < ApplicationController

  def new
    @encryption = Encryption.new
  end

  def create
    @encryption = Encryption.new(message: params[:message])
    redirect_to encryption_path
  end

  def show
    @encryption = Encryption.find(params[:id])
  end

  def decrypt

  end
end
