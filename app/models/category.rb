class Category < ActiveRecord::Base
	validates :name,  presence: true, length: { maximum: 50 }
	
	belongs_to :user
	has_many :entries
end
