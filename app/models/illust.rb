class Illust < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :user_id, presence: true
  validates :name, presence: true
  validates :image, presence: true
  mount_uploader :image, ImageUploader
end
