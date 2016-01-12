class Academy < ActiveRecord::Base
  has_many :academy_teachers
  has_many :teachers, through: :academy_teachers, dependent: :destroy
  has_many :subjects

  validates :name, presence: true, length: { maximum: 40 }, uniqueness: { case_sensetive: true }
end
