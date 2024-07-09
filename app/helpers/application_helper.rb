module ApplicationHelper

  def notice_message
    if flash[:notice]
      content_tag(:p, flash[:notice], class: 'flash notice')
    end
  end
  
  def alert_message
    if flash[:alert]
      content_tag(:p, flash[:alert], class: 'flash alert')
    end
  end

  def current_year
    Time.current.year
  end

  def github_url(author, repo)
    "GitHub: #{link_to author, repo}".html_safe
  end

end
