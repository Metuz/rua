class Student < ActiveRecord::Base
  belongs_to :master

  validates :name, presence: true, length: { maximum: 30 }
	validates :lname, presence: true, length: { maximum: 20 }
	validates :mname, presence: true, length: { maximum: 20 }
	validates :master_id, presence: true
	VALID_PIN_REGEX = /\A\d*$\z/i
	validates :pin, presence: true, format: { with: VALID_PIN_REGEX }, length: { maximum: 10 }    #, uniqueness: true
end
