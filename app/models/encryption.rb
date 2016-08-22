class Encryption < ActiveRecord::Base
  before_validation :encrypt_now

  def encrypt_now
    binding.pry
  end
end
