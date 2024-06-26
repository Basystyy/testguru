module SessionsHelper

  def alert_message(alert)
    if flash[:alert]
      content_tag(:p, "Are you a Guru? Verify your Email and Password please", class: 'flash alert')
    end
  end

end
