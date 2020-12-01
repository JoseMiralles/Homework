# == Schema Information
#
# Table name: likes
#
#  id         :bigint           not null, primary key
#  liker_id   :integer          not null
#  video_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Like < ApplicationRecord

    belongs_to :liker,
    foreign_key: :liker_id,
    class_name: :User

    belongs_to :video,
    class_name: :Video,
    foreign_key: :video_id
  
end