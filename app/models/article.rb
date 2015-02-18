class Article < ActiveRecord::Base

	# rel's
	has_many :categories

	# validations
	validates_presence_of :title, :content

	# scope
	scope :active, where('active = ?', true)
  	scope :alphabetical, order('title')
end
