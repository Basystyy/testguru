module ApplicationHelper

  def flash_message
    flash.filter_map do |key, value|
      if value
        content_tag(:p, value, class: "flash #{key}")
      end
    end.join.html_safe
  end
  
  # def alert_message
  #   if flash[:alert]
  #     content_tag(:p, flash[:alert], class: 'flash alert')
  #   end
  # end

  def current_year
    Time.current.year
  end

  def github_url(author, repo)
    "GitHub: #{link_to author, repo}".html_safe
  end

end
