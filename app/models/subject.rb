class Subject < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50 }, uniqueness: { case_sensetive: true }
  validates :pin, presence: true, length: { maximum: 10 }
  validates :period, presence: true, length: { maximum: 1 }
  validates_numericality_of :credits
end
