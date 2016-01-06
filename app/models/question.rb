class Question < ActiveRecord::Base
  validates :name, presence: true, uniqueness: {scope: :quiz_id}
  validates :quiz_id, presence: true

  belongs_to :quiz
end
