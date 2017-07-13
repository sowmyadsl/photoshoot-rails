class AddImageAttachmentToServices < ActiveRecord::Migration[5.1]
  def change
    add_attachment :services, :image
  end
end
