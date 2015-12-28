class Master < ActiveRecord::Base
  has_many :subjects
  has_many :students

  validates :name, presence: true, length: { maximum: 30 }, uniqueness: { case_sensetive: true }

end
