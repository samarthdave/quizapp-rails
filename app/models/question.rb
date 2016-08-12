class Question < ActiveRecord::Base
	
	belongs_to :quiz
	
	validates :content, presence: true, length: {minimum: 1, maximum: 100}
	
end
