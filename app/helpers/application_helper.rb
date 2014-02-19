module ApplicationHelper

  def top?
    controller.controller_name == 'top'
  end
end
