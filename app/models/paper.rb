class Paper < ActiveRecord::Base
  belongs_to(:user)
  attr_accessible :attachment, :name
  mount_uploader :attachment, AttachmentUploader
end
