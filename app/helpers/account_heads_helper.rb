module AccountHeadsHelper
  def attach_category
    category_exists = false
    category = category_params[:name]
    if category != ""
      c = Category.where(:name => category).take
      @account_head.categories.pluck(:name).each do |e|
        if c.name == e
          category_exists = true
        end
      end
      if !category_exists
        @account_head.categories << c
      end
    end
  end
end
