module MlocationsHelper
    def mlocations_dropdown
    arr = []
    Mlocation.all.each do |mlocation|
        if mlocation.user_id == current_user.id
        arr << [mlocation.name, mlocation.id]
        end
      end
    return arr.sort!
  end
end
