module ApplicationHelper
  def flash_messages(opts = {})
    flash.each do |msg_type, message|
      concat(content_tag(:div, message, role: "alert", class: "alert #{bootstrap_class_for(msg_type)} alert-dismissible fade in") do
              concat content_tag(:button, 'x', class: "close", data: { dismiss: 'alert' }, aria: { label: 'Close' })
              concat message
            end)
    end
    nil
  end
end
