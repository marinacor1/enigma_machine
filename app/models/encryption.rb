class Encryption < ActiveRecord::Base
  before_action :encrypt_now

  def encrypt_now
    binding.pry
  end
end
