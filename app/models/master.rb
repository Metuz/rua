class Master < ActiveRecord::Base

  validates :name, presence: true, length: { maximum: 30 }, uniqueness: { case_sensetive: true }

end
