class Post < ApplicationRecord
	belongs_to :category
	has_many :sections, dependent: :destroy
	
end
