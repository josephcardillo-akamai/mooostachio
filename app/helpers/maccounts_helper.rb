module MaccountsHelper
    def maccounts_dropdown
    arr = []
    Maccount.all.each do |maccount|
        if maccount.user_id == current_user.id
        arr << [maccount.name, maccount.id]
        end
      end
    return arr
  end
end
