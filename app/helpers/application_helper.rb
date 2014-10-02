module ApplicationHelper
  def title
    base_title = "Sample Social Network"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  def logo
    image_tag("logo.jpg", alt: "Sample App Logo", class: "round")
  end
end
