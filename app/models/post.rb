class Post < ActiveRecord::Base
  belongs_to :teacher
  validates :name, presence: true
  validates :hrs, :numericality => { :greater_than => 0, :less_than_or_equal_to => 40 }
end
