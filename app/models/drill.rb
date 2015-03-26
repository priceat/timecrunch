class Drill < ActiveRecord::Base
  belongs_to :exercise
  belongs_to :workout
  mount_uploader :video, VideoUploader
end
