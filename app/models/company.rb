class Company < ApplicationRecord

#has_many :users
belongs_to :country
has_many :places
belongs_to :city
belongs_to :state

  mount_uploader :company_image, XyzUploader

  mount_uploader :profile_image, AbcUploader


end
