class Post < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader
  has_many    :comments
  belongs_to  :user
  paginates_per 4
end
