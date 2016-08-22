class Encryption < ActiveRecord::Base

  def encrypt_now
    e = Enigma.new
    key = e.key.key
    my_message = self.message
    e.encrypt(my_message, key, e.offsets_info)
  end
end
