class Entry < ActiveRecord::Base
	belongs_to :account_head

	accepts_nested_attributes_for :account_head
end
