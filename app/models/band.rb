class Band < ApplicationRecord
  validates :band_name, :band_members, presence: true
end
