class Band < ApplicationRecord
  validates :band_name, :band_members, presence: true
  mount_uploader :avatar_path, AvatarUploader
end
