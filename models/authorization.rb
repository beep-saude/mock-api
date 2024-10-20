class Authorization < ApplicationRecord
  belongs_to :exam, foreign_key: :exam_id, class_name: '::Exam'
end
