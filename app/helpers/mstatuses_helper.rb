module MstatusesHelper

    def mstatuses_dropdown
    arr = []
    Mstatus.all.each do |mstatus|
        if mstatus.user_id == current_user.id
        arr << [mstatus.name, mstatus.id]
        end
      end
    return arr
  end
end
