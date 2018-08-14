class Incident < ApplicationRecord
  belongs_to :users
  belongs_to :incidenttypes
end
