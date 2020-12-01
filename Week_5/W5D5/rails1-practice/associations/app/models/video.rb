# == Schema Information
#
# Table name: videos
#
#  id          :bigint           not null, primary key
#  title       :string           not null
#  description :text             not null
#  uploader_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Video < ApplicationRecord

    belongs_to :uploader,
    foreign_key: :uploader_id,
    class_name: :User

    has_many :comments,
    class_name: :Comment,
    foreign_key: :video_id

    has_many :likes,
    class_name: :Like,
    foreign_key: :video_id

    has_many :likers,
    through: :likes,
    source: :liker

    has_many :commenters,
    through: :comments,
    source: :commenter

    has_many :likers_comments,
    through: :likers,
    source: :comments
  
end