module DashboardHelper
  def account_sum
    @mentries = Mentry.all
    total = 0
      @mentries.each do |mentry|
        if mentry.maccount.name == "Checking"
        total += mentry.amount
        end
      end
      number_to_currency(total)
  end

  def chart_array
    @categories = Mcategory.all

    categories_arr = []
    @categories.each do |category|
      subarray = []
      subarray.push(category.name)
      total = 0
      category.mentries.each do |entry|
        if entry.mtype.name != 'transfer'
          if entry.mcategory.name != 'paycheck'
        total += entry.amount
          end
        end
      end
      if total != 0
        subarray.push(total * -1)
        categories_arr.push(subarray)
      end
    end
    return categories_arr
  end

  def cat_not_zero
    @mcategories = Mcategory.all
    arr = []
    @mcategories.each do |mcategory|
      total = 0
      mcategory.mentries.each do |entry|
        if entry.mtype.name != 'transfer' && entry.mcategory.name != 'paycheck'
          total += entry.amount
        end
      end
      if total != 0
        arr.push(mcategory)
      end
    end
    return arr
  end

end
