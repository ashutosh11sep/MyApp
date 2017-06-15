class Image < ApplicationRecord
belongs_to :user

  mount_uploader :image_name, AvatarUploader

end
