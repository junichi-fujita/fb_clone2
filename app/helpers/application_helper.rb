module ApplicationHelper
  def choose_new_or_edit
    if action_name == "new"  || action_name == "confirm"
      :confirm_pictures
    elsif action_name == "edit"
      :picture
    end
  end
end
