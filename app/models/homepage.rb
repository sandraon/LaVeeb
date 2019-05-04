class Homepage < ApplicationRecord
    mount_uploader :picture, AvatarUploader
    mount_uploader :logo, AvatarUploader
end
