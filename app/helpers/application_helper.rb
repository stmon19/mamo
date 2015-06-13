module ApplicationHelper
  def format_default date
    date.strftime(t(:default, scope: [:date, :formats]))
  end

  def format_default_without_day date
    date.strftime(t(:default_without_day, scope: [:date, :formats]))
  end

  def nav_class_name current_name
    {class: "nav-link#{(controller_name == current_name ? " current" : "")}"}
  end
end