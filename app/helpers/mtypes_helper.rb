module MtypesHelper
    def mtypes_dropdown
    arr = []
    Mtype.all.each do |mtype|
        if mtype.user_id == current_user.id
        arr << [mtype.name, mtype.id]
        end
      end
    return arr
  end
end
