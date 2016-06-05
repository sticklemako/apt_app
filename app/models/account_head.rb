class AccountHead < ActiveRecord::Base
	has_many :account_categories
	has_many :categories, :through => :account_categories

	has_many :entries
end
