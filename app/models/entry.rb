class Entry < ActiveRecord::Base
	validates :name,  presence: true, length: { maximum: 50 }
	validates :value, presence: true
	validates :date, presence: true 

	belongs_to :category
end
