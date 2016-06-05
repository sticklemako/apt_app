class Category < ActiveRecord::Base
	has_many :account_categories
	has_many :account_heads, :through => :account_categories
end
