require 'oauth'
require 'oauth/consumer'
require 'gapps_openid'
require 'oauth/signature/rsa/sha1'

module OauthConstants

  OAUTH_CONSUMER_TOKEN  = 'example.ru'
  OAUTH_CONSUMER_SECRET = 'abcdefghijklmnopqrst'

  MAIL_SCOPE            = "https://mail.google.com/mail/feed/atom/"
  CALENDAR_SCOPE        = "http://www.google.com/calendar/feeds/"
  DOCS_SCOPE            = "https://docs.google.com/feeds/"


  CALENDAR_SETTINGS     = {
    'futureevents' => true,
    'orderby' => "starttime",
    'sortorder' => "a",
    'max-results' => 5,
    'singleevents' => true
  }



  GOOGLE_SETTINGS = {
    :site               => "https://www.google.com",
    :request_token_path => "/accounts/OAuthGetRequestToken",
    :authorize_path     => "/accounts/OAuthAuthorizeToken",
    :access_token_path  => "/accounts/OAuthGetAccessToken"
  }

  OAUTH_OPTS = {
    :consumer => OAUTH_CONSUMER_TOKEN,
    :scope => [MAIL_SCOPE, CALENDAR_SCOPE, DOCS_SCOPE].join(" "),
  }
  DOCS_FEED             = "#{DOCS_SCOPE}default/private/full"
  DOCS_FEED_FOLDERS     = "#{DOCS_FEED}?show_folders=true"
  DOCS_FOLDERS          = "#{DOCS_FEED}/-/folder"

  MAIL_FEED             = MAIL_SCOPE
  CALENDARS_FEED        = "#{CALENDAR_SCOPE}default/allcalendars/full"

  #unless APP_CONFIG['google_apps_folder_id'].blank?
  #  DOCS_FOLDER_FEED = "#{DOCS_SCOPE}default/private/full/folder%3A#{APP_CONFIG['google_apps_folder_id']}/contents"
  #end
end