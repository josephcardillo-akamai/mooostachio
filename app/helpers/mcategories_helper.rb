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
end
