class Teacher < ActiveRecord::Base
  has_many :academy_teachers
  has_many :academies, through: :academy_teachers

  validates :name, presence: true, length: { maximum: 40 }
  validates :lname, presence: true, length: { maximum: 20 }
  validates :mname, presence: true, length: { maximum: 20 }
  validates :degree, presence: true, length: { maximum: 40 }
  validates :master, length: { maximum: 20 }
  validates :shift, presence: true, length: { maximum: 20 }
  validates :dictamen, presence: true, length: { maximum: 20 }
  validates_numericality_of :age, only_integer: true
  VALID_PIN_REGEX = /\A\d*$\z/i
	validates :pin, presence: true, format: { with: VALID_PIN_REGEX }, uniqueness: true
end
