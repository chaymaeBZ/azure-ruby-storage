class Storage < ApplicationRecord
  belongs_to :cloud_account
  attr_encrypted_options.merge!(:encrypted => true)
  attr_encrypted :name, :key => Figaro.env.namesecret
  attr_encrypted :key, :key => Figaro.env.keysecret
end
