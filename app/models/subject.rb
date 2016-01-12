class Subject < ActiveRecord::Base
  belongs_to :academy
  has_many :subject_teachers
  has_many :teachers, through: :subject_teachers, dependent: :destroy
  belongs_to :major

  validates :name, presence: true, length: { maximum: 50 }, uniqueness: { case_sensetive: true }
  validates :pin, presence: true, length: { maximum: 10 }
  validates :period, presence: true#, length: { maximum: 1 }
  validates_numericality_of :credits
end
