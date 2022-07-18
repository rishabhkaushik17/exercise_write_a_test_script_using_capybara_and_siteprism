require_relative '../pages/google_search'
require_relative '../pages/youtube_search'


Given(/^The user is on google homepage$/) do
  @google = GoogleSearch.new
end

When(/^Search youtube on google$/) do
  @google.search('youtube')
end

Then(/^Redirected to youtube\.com$/) do
  @google.open_first_searched_result
end

Given(/^The user is on youtube home page$/) do
  @youtube = Youtube.new
end

When(/^Search (.*) on youtube$/) do |song|
  @youtube.search(song)
end

When(/^Site return result for (.*)$/) do |song|
  @youtube.search_result_present?(song)
end

Then(/^Click on first search result$/) do
  @youtube.play_first_searched_video
end

Then(/^Song starts playing$/) do
end

Given(/^User is on a youtube video playing page$/) do
  @youtube = Youtube.new
  @youtube.search('baari')
  @youtube.play_first_searched_video
end

When(/^Click on pause button$/) do
  @youtube.pause_video
end

And(/^Click on play button$/) do
  @youtube.play_video
end

And(/^Click on next video button$/) do
  @youtube.play_next_video
end

Then(/^Video is paused$/) do

end

And(/^Video is played$/) do

end

And(/^Next video is played$/) do

end