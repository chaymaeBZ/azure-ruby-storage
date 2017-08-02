class CloudAccount < ApplicationRecord
  belongs_to :user
  has_many :storages
end
