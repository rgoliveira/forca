class Evaluation < ApplicationRecord
  belongs_to :student
  belongs_to :professor
  belongs_to :course
end
