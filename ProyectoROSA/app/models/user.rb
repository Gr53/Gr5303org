class User < ApplicationRecord
  belongs_to :identificationtypes
  belongs_to :supportnets
  has_secure_password
end
