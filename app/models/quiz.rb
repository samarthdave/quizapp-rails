class Quiz < ActiveRecord::Base
	
	has_many :questions, dependent: :destroy
	
	validates_associated :questions
	
	accepts_nested_attributes_for :questions,
		reject_if: proc { |attributes| attributes['content'].blank? }, allow_destroy: true
	
	validates :title, presence: true, length: {minumim: 3, maximum: 100}
	
	validates_each :questions do |quiz, questions|
		quiz.errors.add questions, "Too many questions." if quiz.questions.length > 6
		quiz.errors.add questions, "Too few questions. (Minimum is 2)" if quiz.questions.length < 2
	end
	
end
