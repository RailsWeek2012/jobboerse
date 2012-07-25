class Paper < ActiveRecord::Base
  belongs_to(:user)
  belongs_to(:application)
  attr_accessible :attachment, :name
  mount_uploader :attachment, AttachmentUploader
end
