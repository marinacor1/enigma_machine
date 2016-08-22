class Encryption < ActiveRecord::Base
  before_validation :encrypt_now

  def encrypt_now
    e = Engima.new
    key = e.key.key
    my_message = self.message
    e.encrypt(my_message, key, e.offsets_info)
    binding.pry
  end
end
