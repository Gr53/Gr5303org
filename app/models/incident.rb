class Incident < ApplicationRecord
  belongs_to :users
  belongs_to :incident_types
end
