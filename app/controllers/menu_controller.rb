class MenuController < ApplicationController
	def index

	end

	def view_data
		if(criteria_params[:sorting])
			get_data(criteria_params[:sorting])
		else
			get_data("")
		end
	end

	def view_income
		get_data("")
		get_income_data
	end

	def get_income_data
		@income_data = Entry.select("title", "value", "date_of", "is_debit", "account_head_id")
		puts @income_data.to_json
		puts @income_data.where(:is_debit => true).count(:all)
		puts @income_data.where(:is_debit => false).count(:all)
	end

	def get_data(sorting)
		@final_data = []
		if sorting != ""
			AccountHead.all.each do |ac|
				puts ac.categories.pluck(:name).find { |e| e == sorting }
				if(ac.categories.pluck(:name).find { |e| e == sorting })
					@final_data << ac
				end			
			end
		else
			@final_data = AccountHead.all
		end
	end

	def criteria_params
		params.permit(:sorting)
	end
end