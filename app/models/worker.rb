class Worker < ApplicationRecord
    mount_uploader :foto, AvatarUploader
    validates :name, :jobtitle, presence: true
end
