class Worker < ApplicationRecord
    mount_uploader :foto, AvatarUploader
end
