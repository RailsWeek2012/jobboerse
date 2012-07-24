class AddAttachmentToPaper < ActiveRecord::Migration
  def change
    add_column :papers, :attachment, :string
  end
end
