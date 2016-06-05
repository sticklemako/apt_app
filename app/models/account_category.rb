class AccountCategory < ActiveRecord::Base
	belongs_to :account_head
	belongs_to :category
end
