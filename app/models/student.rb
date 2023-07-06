class Student < ApplicationRecord
  has_many :blogs
  has_and_belongs_to_many :courses

  has_many :student_projects
  has_many :projects, through: :student_projects

  validates :first_name, :last_name, :email, presence: true

  after_create :display_student_age

  private

  def display_student_age
    if self.date_of_birth.present?
      age = Date.today.year - self.date_of_birth.year

      puts " =========== the age of the student is #{age} years ====================== "
    else
      puts "============ Age can not be calculated without age ======================== "
    end
  end
end
