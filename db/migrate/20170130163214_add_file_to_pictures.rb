class AddFileToPictures < ActiveRecord::Migration[5.0]
  def self.up
    add_attachment :pictures, :image
  end

  def self.down
    remove_attachment :pictures, :image
  end
end
