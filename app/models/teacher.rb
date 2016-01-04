class Teacher < ActiveRecord::Base
  has_many :academy_teachers
  has_many :academies, through: :academy_teachers
  has_many :subject_teachers
  has_many :subjects, through: :subject_teachers
  has_many :posts, :dependent => :destroy
	accepts_nested_attributes_for :posts, reject_if: :all_blank, :allow_destroy => true

  validates :name, presence: true, length: { maximum: 40 }
  validates :lname, presence: true, length: { maximum: 20 }
  validates :mname, presence: true, length: { maximum: 20 }
  validates :degree, presence: true, length: { maximum: 40 }
  validates :master, length: { maximum: 20 }
  validates :shift, presence: true, length: { maximum: 20 }
  validates :dictamen, presence: true, length: { maximum: 20 }
  validates :age, :numericality => { :greater_than_or_equal_to => 0 }
  VALID_PIN_REGEX = /\A\d*$\z/i
	validates :pin, presence: true, format: { with: VALID_PIN_REGEX }, uniqueness: true

  before_save :set_total

  validate :set_total_hrs

  private

  def set_total_hrs
    if self.posts.map(&:hrs).sum > 40
      errors.add(:total_hrs, "La suma total de las horas no puede ser mayor a 40")
    end
  end

  def set_total
    self.total_hrs = self.posts.sum(:hrs)
  end
end
