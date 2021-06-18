class Cohort < ActiveRecord::Base
  has_many :students

  def add_student(name, age)
      students.find_or_create_by(name: name, age: age)
  end

  def average_age
      self.students.average(:age)
  end

  def total_students
      self.students.count
  end

  def self.biggest
    self.all.max_by{|cohort| cohort.students.count}
  end

  def self.sort_by_mod
      self.all.sort_by{|cohort| cohort.current_mod}
  end
end