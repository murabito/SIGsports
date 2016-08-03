module AthletesHelper
  def flag_url(athlete)
    "country-squared/#{athlete.country_code.downcase}.svg"
  end

  def embed_youtube(youtube_url)
    if youtube_url.match('feature=youtu.be')
      youtube_url = youtube_url.split("&feature=youtu.be").first
    end

    if (youtube_url.match('youtube') && !youtube_url.match('&list='))
      youtube_id = youtube_url.split("=").last
    elsif (youtube_url.match('youtu.be') && !youtube_url.match('&list='))
      youtube_id = youtube_url.split("/").last
    end

    content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}")
  end
end
