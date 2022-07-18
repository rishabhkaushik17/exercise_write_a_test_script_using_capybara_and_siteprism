class Youtube < SitePrism::Page
  element :video_search, 'input[id = "search"]'
  element :video_search_button, '#search-icon-legacy'
  elements :video_search_results, 'h3'
  element :play_pause_button, 'button[aria-label="Play (k)"]'
  element :next_video, 'a[aria-label="Next (SHIFT+n)"]'

  def initialize
    visit 'https://www.youtube.com/'
  end

  def search(keyword)
    video_search.set keyword
    video_search_button.click
    sleep 1
  end

  def search_result_present?(search_key)
    video_search.eql? search_key
  end

  def play_first_searched_video
    video_search_results.first.click
    sleep 2
  end

  def pause_video
    play_pause_button.click
    sleep 1
  end

  def play_video
    play_pause_button.click
    sleep 1
  end

  def play_next_video
    next_video.click
    sleep 4
  end
end