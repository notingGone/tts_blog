class AddAttachmentToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :attachment, :string
  end
end
