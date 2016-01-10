class Student < ActiveRecord::Base
  require 'csv'
  belongs_to :major

  validates :name, presence: true, length: { maximum: 30 }
	validates :lname, presence: true, length: { maximum: 20 }
	validates :mname, presence: true, length: { maximum: 20 }
  validates :entry, presence: true
	validates :major_id, presence: true
	VALID_PIN_REGEX = /\A\d*$\z/i
	validates :pin, presence: true, format: { with: VALID_PIN_REGEX }, length: { maximum: 10 }    #, uniqueness: true


  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      student = find_by_id(row["id"]) || new
      student.attributes = row.to_hash
      student.save!
    end
    ids = Student.select("MAX(id) as id").group(:pin).collect(&:id)
    Student.where("id NOT IN (?)", ids).destroy_all
  end
end
