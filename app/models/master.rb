class Master < ActiveRecord::Base
  has_many :subjects

  validates :name, presence: true, length: { maximum: 30 }, uniqueness: { case_sensetive: true }

end
