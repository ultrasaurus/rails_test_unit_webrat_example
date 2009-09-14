class Person < ActiveRecord::Base
  validates_presence_of :first
  validates_presence_of :last

  has_many :tasks
end
