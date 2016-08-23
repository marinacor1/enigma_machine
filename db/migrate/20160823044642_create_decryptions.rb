class CreateDecryptions < ActiveRecord::Migration
  def change
    create_table :decryptions do |t|
      t.string :message
      t.string :key
      t.string :offsets

      t.timestamps null: false
    end
  end
end
