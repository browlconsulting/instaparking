class AddAttachmentAvatarToParkinglots < ActiveRecord::Migration
  def self.up
    change_table :parkinglots do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :parkinglots, :avatar
  end
end
