class Paper < ActiveRecord::Base
  attr_accessible :user_id, :email , :file;
  belongs_to :user
  mount_uploader :file, AttachmentUploader
end
