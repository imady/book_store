class Book < ActiveRecord::Base
	belongs_to :author
	belongs_to :category
	belongs_to :country
end
