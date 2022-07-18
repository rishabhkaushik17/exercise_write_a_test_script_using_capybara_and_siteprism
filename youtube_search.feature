Feature: Play first searched video on youtube

  Scenario: User is able to search youtube on google and get the corresponding results
    Given The user is on google homepage
    When Search youtube on google
    Then Redirected to youtube.com

  Scenario Outline: User is able to open youtube and search the video songs and also play them
    Given The user is on youtube home page
    When Search <song> on youtube
    When Site return result for <song>
    Then Click on first search result
    Then Song starts playing

    Examples:
    |song|
    |baari|
    |do gallan|

  Scenario: User is able to play video, pause video and switch to next video
    Given User is on a youtube video playing page
    When Click on pause button
    And Click on play button
    And Click on next video button
    Then Video is paused
    And Video is played
    And Next video is played

