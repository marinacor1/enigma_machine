class Decryption < ActiveRecord::Base

  def decrypt_now
    e = Enigma.new
    key = e.key.key
    my_message = self.message
    e.decrypt(my_message, key, e.offsets_info)
  end
end
