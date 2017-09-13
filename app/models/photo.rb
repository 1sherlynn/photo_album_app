class Photo < ApplicationRecord
	belongs_to :album
	has_many :comments

	mount_uploader :avatar, AvatarUploader
end

