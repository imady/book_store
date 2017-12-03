class Country < ActiveRecord::Base
	has_many :books
	validates :name, presence: true
end
