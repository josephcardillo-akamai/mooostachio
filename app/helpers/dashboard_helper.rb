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
              if current_user.id == entry.user_id
                if entry.mtype.name != 'transfer from'
                  if entry.mtype.name != 'transfer to'
                    if entry.mcategory.name != 'paycheck'
                      if entry.mtype.name != 'deposit'
                        total += entry.amount
                      end
                    end
                  end
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


  def chart_array_zero
    arr = [['n/a', 1]]
    return arr
  end


  def cat_not_zero
    @mcategories = Mcategory.all
    arr = []
    @mcategories.each do |mcategory|
          total = 0
          mcategory.mentries.each do |entry|
            if current_user.id == entry.user_id
              if entry.mtype.name != 'transfer from'
                if entry.mtype.name != 'transfer to'
                  if entry.mcategory.name != 'paycheck'
                    if entry.mtype.name != 'deposit'
                      total += entry.amount
                    end 
                  end
                end
              end
            end
          end
          if total != 0
            arr.push(mcategory)
          end
        end
        return arr
  end

  def cat_not_zero_filtered
    @mcategories = Mcategory.all
    arr = []
    @mcategories.each do |mcategory|
      total = 0
      mcategory.mentries.each do |entry|
        if entry.mtype.name != 'transfer' && entry.mcategory.name != 'paycheck'
          if entry.date.to_s > @from_date && entry.date.to_s < @to_date
            total += entry.amount
          end
        end
      end
      if total != 0
        arr.push(mcategory)
      end
    end
    return arr
  end


end
