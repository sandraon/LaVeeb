class Group < ApplicationRecord
    mount_uploader :avatar, AvatarUploader
    validates :name, :number, :age, :description, :teacher, presence: true
end
