module McategoriesHelper
    def mcategories_dropdown
      arr = []
      Mcategory.all.each do |mcategory|
          if mcategory.user_id == current_user.id
            arr << [mcategory.name, mcategory.id]
          end
        end
      return arr
    end

    def mcategory_entries
        arr = []
        Mentry.all.each do |mentry|
            if mentry.user_id == current_user.id && mentry.mcategory.name == @mcategory.name
                arr << mentry
            end
        end
        return arr
    end

end
