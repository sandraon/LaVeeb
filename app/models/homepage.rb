class Homepage < ApplicationRecord
    mount_uploader :picture, AvatarUploader
    mount_uploader :logo, AvatarUploader
    validates :orgname, :content, :address1, :address2, :epost, :phone, presence: true
end
