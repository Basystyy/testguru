module ApplicationHelper

  def current_year
    Time.current.year
  end

  def github_url(author, repo)
    "GitHub: #{link_to author, repo}".html_safe
  end

end
