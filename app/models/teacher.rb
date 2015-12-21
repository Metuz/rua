class Teacher < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 40 }
  validates :lname, presence: true, length: { maximum: 20 }
  validates :mname, presence: true, length: { maximum: 20 }
  validates :degree, presence: true, length: { maximum: 40 }
  validates :master, length: { maximum: 20 }
  validates :shift, presence: true, length: { maximum: 20 }
  VALID_PIN_REGEX = /\A\d*$\z/i
	validates :pin, presence: true, format: { with: VALID_PIN_REGEX }, uniqueness: true
end
