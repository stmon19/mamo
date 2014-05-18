module ApplicationHelper
  def format_default date
    date.strftime(t(:default, scope: [:date, :formats]))
  end
end
