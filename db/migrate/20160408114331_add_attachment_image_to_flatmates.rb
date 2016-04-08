class AddAttachmentImageToFlatmates < ActiveRecord::Migration
  def self.up
    change_table :flatmates do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :flatmates, :image
  end
end
