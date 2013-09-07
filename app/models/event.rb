class Event < ActiveRecord::Base
	has_many :attendances
	has_many :users, :through => :attendances
	#has_and_belongs_to_many :users
	validates :name, presence: true
	validates :fees, presence: true
	validates :event_date, presence: true

end
